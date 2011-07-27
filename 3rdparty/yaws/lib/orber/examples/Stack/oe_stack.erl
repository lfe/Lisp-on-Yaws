%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: oe_stack
%% Source: /net/isildur/ldisk/daily_build/r14b03_prebuild_opu_o.2011-05-24_13/otp_src_R14B03/lib/orber/examples/Stack/stack.idl
%% IC vsn: 4.2.26
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module(oe_stack).
-ic_compiled("4_2_26").


-include_lib("orber/include/ifr_types.hrl").

%% Interface functions

-export([oe_register/0, oe_unregister/0, oe_get_module/5]).
-export([oe_dependency/0]).



oe_register() ->
    OE_IFR = orber_ifr:find_repository(),

    register_tests(OE_IFR),

    _OE_1 = oe_get_top_module(OE_IFR, "IDL:StackModule:1.0", "StackModule", "1.0"),

    orber_ifr:'ModuleDef_create_exception'(_OE_1, "IDL:StackModule/EmptyStack:1.0", "EmptyStack", "1.0", []),

    _OE_2 = orber_ifr:'ModuleDef_create_interface'(_OE_1, "IDL:StackModule/Stack:1.0", "Stack", "1.0", []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_2, "IDL:StackModule/Stack/pop:1.0", "pop", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_long), 'OP_NORMAL', [], [orber_ifr:lookup_id(OE_IFR,"IDL:StackModule/EmptyStack:1.0")], []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_2, "IDL:StackModule/Stack/push:1.0", "push", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_void), 'OP_NORMAL', [#parameterdescription{name="value", type=tk_long, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, tk_long), mode='PARAM_IN'}
], [], []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_2, "IDL:StackModule/Stack/empty:1.0", "empty", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_void), 'OP_NORMAL', [], [], []),

    _OE_3 = orber_ifr:'ModuleDef_create_interface'(_OE_1, "IDL:StackModule/StackFactory:1.0", "StackFactory", "1.0", []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_3, "IDL:StackModule/StackFactory/create_stack:1.0", "create_stack", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:StackModule/Stack:1.0",
                                               "Stack"}), 'OP_NORMAL', [], [], []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_3, "IDL:StackModule/StackFactory/destroy_stack:1.0", "destroy_stack", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_void), 'OP_NORMAL', [#parameterdescription{name="s", type={tk_objref,"IDL:StackModule/Stack:1.0",
                                      "Stack"}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:StackModule/Stack:1.0",
                                               "Stack"}), mode='PARAM_IN'}
], [], []),

    ok.


%% General IFR registration checks.
register_tests(OE_IFR)->
  re_register_test(OE_IFR),
  include_reg_test(OE_IFR).


%% IFR type Re-registration checks.
re_register_test(OE_IFR)->
  case orber_ifr:'Repository_lookup_id'(OE_IFR,"IDL:StackModule/EmptyStack:1.0") of
    []  ->
      true;
    _ ->
      exit({allready_registered,"IDL:StackModule/EmptyStack:1.0"})
 end.


%% No included idl-files detected.
include_reg_test(_OE_IFR) -> true.


%% Fetch top module reference, register if unregistered.
oe_get_top_module(OE_IFR, ID, Name, Version) ->
  case orber_ifr:'Repository_lookup_id'(OE_IFR, ID) of
    [] ->
      orber_ifr:'Repository_create_module'(OE_IFR, ID, Name, Version);
    Mod  ->
      Mod
   end.

%% Fetch module reference, register if unregistered.
oe_get_module(OE_IFR, OE_Parent, ID, Name, Version) ->
  case orber_ifr:'Repository_lookup_id'(OE_IFR, ID) of
    [] ->
      orber_ifr:'ModuleDef_create_module'(OE_Parent, ID, Name, Version);
    Mod  ->
      Mod
   end.



oe_unregister() ->
    OE_IFR = orber_ifr:find_repository(),

    oe_destroy(OE_IFR, "IDL:StackModule/StackFactory:1.0"),
    oe_destroy(OE_IFR, "IDL:StackModule/Stack:1.0"),
    oe_destroy(OE_IFR, "IDL:StackModule/EmptyStack:1.0"),
    oe_destroy_if_empty(OE_IFR, "IDL:StackModule:1.0"),
    ok.


oe_destroy_if_empty(OE_IFR,IFR_ID) ->
    case orber_ifr:'Repository_lookup_id'(OE_IFR, IFR_ID) of
	[] ->
	    ok;
	Ref ->
	    case orber_ifr:contents(Ref, 'dk_All', 'true') of
		[] ->
		    orber_ifr:destroy(Ref),
		    ok;
		_ ->
		    ok
	    end
    end.

oe_destroy(OE_IFR,IFR_ID) ->
    case orber_ifr:'Repository_lookup_id'(OE_IFR, IFR_ID) of
	[] ->
	    ok;
	Ref ->
	    orber_ifr:destroy(Ref),
	    ok
    end.



%% Idl file dependency list function
oe_dependency() ->

    [].

