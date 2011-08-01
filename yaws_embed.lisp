(defparameter *yaws-server-node-name* "jon-VirtualBox")
(defparameter *cookie-file* "/home/jon/Lisp-On-Yaws/COOKIE")
(defvar *yaws-listener-thread*)
(defvar *pids-hash* (make-hash-table))
(defvar *reg-pids-hash* (make-hash-table))
(defvar *pid* (cleric:make-pid))

(defun cleric::find-connected-remote-node (node-name)
  (flet ((node-name= (node-name1 node-name2)
		     (let ((len1 (length node-name1))
			   (len2 (length node-name2)))
		       (if (> len1 len2)
			   (string= (subseq node-name1 0 len2) node-name2)
			 (string= (subseq node-name2 0 len1) node-name1)))))
    (when (symbolp node-name)
      (setf node-name (symbol-name node-name)))

    (find node-name
	  cleric::*remote-nodes*
	  :key #'cleric::remote-node-name
	  :test #'node-name=)))

(defun node-listener-thread (dispatch-function)
  (setf *yaws-listener-thread*
	(sb-thread:make-thread 
	 (lambda ()
	   (do ()
	       (NIL)
	     (let ((messages (cleric:receive-node-messages)))
	       (when messages (mapcar dispatch-function messages))))))))

(defmethod hash-dispatch ((control-message cleric:reg-send))
  (let* ((to-name (cleric:to-name control-message))
	 (fnlambda (gethash to-name *reg-pids-hash*)))
    
    (if fnlambda (funcall fnlambda control-message)
	;(format t "~s~%" to-name)
	)))

(defmethod hash-dispatch ((control-message cleric:send))
  (let* ((to-pid (cleric:to-pid control-message))
	 (fnlambda (gethash to-pid *pids-hash*)))
    (when fnlambda (funcall fnlambda control-message))))

(defun set-hash-dispatch (fn)
  (let ((pid (cleric:make-pid)))
    (setf (gethash pid *pids-hash*) fn)
    pid))

(defun register (string fn)
  (setf (gethash (intern string "KEYWORD") *reg-pids-hash* ) fn))

(defvar +file-atom+ (cleric:make-atom "file"))

(defun write-module-string (module-name node-name &rest resources)
  (let ((header (format nil "(defmodule ~a (export (out 1)))" module-name))
	(include (format nil "(include-file \"include/yaws_api.lfe\")" ))
	(gen-out (format nil "(gen_resources ~a (~{~a~^ ~}))" node-name resources)))
    (format nil "~a~%~a~%~a~%" header include gen-out)))

(defun send-file-for-compilation (module-name file-data)
  (cleric:reg-send *pid* "lfe_compiler" "yaws" 
		   (cleric:tuple +file-atom+  module-name file-data)))

(defvar +update_appmod+ (cleric:make-atom "update_appmod"))

(defun add-appmod (appmod)
  (cleric:reg-send *pid* "conf_control" "yaws"
		   (cleric:tuple +update_appmod+ appmod)))

(defvar *elements*)
(defvar *type*)
(defvar *dest*)
(defvar *ref*)
(defvar *query*)
(defvar *reply-type*)

(defun reply (value &optional (reply-type *reply-type*))
  (cleric:send *dest* (cleric:tuple *ref* (cleric:tuple reply-type value))))

(defmacro easy-handler ((&rest args)(default-reply-type) &body body)
  (let ((control-message (gensym "control-message"))
	(len (gensym "len")))
    `(lambda (,control-message)
       (let* ((*elements* (cleric:elements (cleric:message ,control-message)))
	      (*type* (elt *elements* 0))
	      (*dest* (elt *elements* 1))
	      (*ref* (elt *elements* 2))
	      (*query* (elt *elements* 3))
	      (*reply-type* ,default-reply-type)
	      ,@(if args 
		    `(,len (length *elements*))
		    nil)
	      ,@(let ((i 4))
		     (mapcar #'(lambda (arg) 
				 (prog1 `(,arg (when (> ,len ,i)  (map 'string #'code-char (elt *elements* ,i))))
				   (incf i)))
			     args)))
	  
	   ,@body))))


(defun hello-world (control-message)
  (let* ((msg (cleric:message control-message))
	 (vector (cleric:elements msg)))
    (let ((type (elt vector 0))
	  (dest (elt vector 1))
	  (ref (elt vector 2))
	  (query (elt vector 3)))
      (cleric:send dest (cleric:tuple ref (cleric:tuple :|html| "Hello World"))))))

(defun init ()
  (let ((yaws-server (cleric-epmd:lookup-node "yaws" *yaws-server-node-name*)))
    (let ((cookie (with-open-file (stream *cookie-file* :direction :input)
		    (read-line stream))))
      (cleric:remote-node-connect yaws-server cookie)))
  (node-listener-thread #'hash-dispatch)
  (let ((hello-world-lfe (write-module-string "hello_world" (cleric:this-node) "(hello_world GET ())")))
    (send-file-for-compilation "hello_world" hello-world-lfe))
  (add-appmod (cleric:make-atom "hello_world"))
  (register "hello_world" (easy-handler () (:|html|)
			    (reply "hello world"))))

(defun add-math-appmod ()
  (let ((hello-world-lfe (write-module-string "basic_math" (cleric:this-node) 
					      "(addition GET (\"+\" B C))"
					      "(subtraction GET (\"-\" B C))"
					      "(multiplication GET (\"*\" B C))"
					      "(equals GET (\"=\" B C))")))
    (send-file-for-compilation "basic_math" hello-world-lfe)
    (add-appmod (cleric:tuple  "math" (cleric:make-atom "basic_math")))
    (macrolet ((parse-or-reply (symbol &optional (emessage "error"))
		 (assert (symbolp symbol))
		 `(handler-case (parse-integer ,symbol)
		    (sb-int::simple-parse-error () 
		      (reply ,emessage)
		      (return)))))
      (register "addition"
		(easy-handler (a b) (:|html|)
		  (block nil
		    (if (and a b) 
			(let* ((a-int (parse-or-reply a "parse error on a"))		  
			       (b-int (parse-or-reply b "parse error on b")))
			  (reply (format nil "~s" (+ a-int b-int))))
			(reply "not enough args")))))
      (register "subtraction"
		(easy-handler (a b) (:|html|)
		  (block nil
		    (if (and a b) 
			(let* ((a-int (parse-or-reply a "parse error on a"))		  
			       (b-int (parse-or-reply b "parse error on b")))
			  (reply (format nil "~s" (- a-int b-int))))
			(reply "not enough args")))))
      (register "multiplication"
		(easy-handler (a b) (:|html|)
		  (block nil
		    (if (and a b) 
			(let* ((a-int (parse-or-reply a "parse error on a"))		  
			       (b-int (parse-or-reply b "parse error on b")))
			  (reply (format nil "~s" (* a-int b-int))))
			(reply "not enough args")))))
      (register "equals"
		(easy-handler (a b) (:|html|)
		  (block nil
		    (if (and a b) 
			(let* ((a-int (parse-or-reply a "parse error on a"))		  
			       (b-int (parse-or-reply b "parse error on b")))
			  (reply (if (= a-int b-int) "true" "false")))
			(reply "not enough args"))))))))

;(cleric:reg-send *pid* "cleric_listener" "yaws" "Hello, Erlang world!")