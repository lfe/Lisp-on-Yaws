(in-package :asdf)
(defsystem :lisp-on-yaws
    :name "lisp-on-yaws"
    :depends-on (:cleric :thread-pool :cl-who)
    :version "0.0.1"
    :components ((:module
		  "src"
		  :components
		  ((:module "common-lisp"
			    :components ((:file "lisp-on-yaws"
						:depends-on ("defpackage"))
					 (:file "defpackage")))))))