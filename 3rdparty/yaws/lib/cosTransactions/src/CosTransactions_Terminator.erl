%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosTransactions_Terminator
%% Source: /net/isildur/ldisk/daily_build/r14b03_prebuild_opu_o.2011-05-24_13/otp_src_R14B03/lib/cosTransactions/src/CosTransactions.idl
%% IC vsn: 4.2.26
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosTransactions_Terminator').
-ic_compiled("4_2_26").


%% Interface functions
-export([commit/2, commit/3, rollback/1]).
-export([rollback/2]).

%% Type identification function
-export([typeID/0]).

%% Used to start server
-export([oe_create/0, oe_create_link/0, oe_create/1]).
-export([oe_create_link/1, oe_create/2, oe_create_link/2]).

%% TypeCode Functions and inheritance
-export([oe_tc/1, oe_is_a/1, oe_get_interface/0]).

%% gen server export stuff
-behaviour(gen_server).
-export([init/1, terminate/2, handle_call/3]).
-export([handle_cast/2, handle_info/2, code_change/3]).

-include_lib("orber/include/corba.hrl").


%%------------------------------------------------------------
%%
%% Object interface functions.
%%
%%------------------------------------------------------------



%%%% Operation: commit
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::HeuristicMixed, CosTransactions::HeuristicHazard
%%
commit(OE_THIS, Report_heuristics) ->
    corba:call(OE_THIS, commit, [Report_heuristics], ?MODULE).

commit(OE_THIS, OE_Options, Report_heuristics) ->
    corba:call(OE_THIS, commit, [Report_heuristics], ?MODULE, OE_Options).

%%%% Operation: rollback
%% 
%%   Returns: RetVal
%%
rollback(OE_THIS) ->
    corba:call(OE_THIS, rollback, [], ?MODULE).

rollback(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, rollback, [], ?MODULE, OE_Options).

%%------------------------------------------------------------
%%
%% Inherited Interfaces
%%
%%------------------------------------------------------------
oe_is_a("IDL:omg.org/CosTransactions/Terminator:1.0") -> true;
oe_is_a(_) -> false.

%%------------------------------------------------------------
%%
%% Interface TypeCode
%%
%%------------------------------------------------------------
oe_tc(commit) -> 
	{tk_void,[tk_boolean],[]};
oe_tc(rollback) -> 
	{tk_void,[],[]};
oe_tc(_) -> undefined.

oe_get_interface() -> 
	[{"rollback", oe_tc(rollback)},
	{"commit", oe_tc(commit)}].




%%------------------------------------------------------------
%%
%% Object server implementation.
%%
%%------------------------------------------------------------


%%------------------------------------------------------------
%%
%% Function for fetching the interface type ID.
%%
%%------------------------------------------------------------

typeID() ->
    "IDL:omg.org/CosTransactions/Terminator:1.0".


%%------------------------------------------------------------
%%
%% Object creation functions.
%%
%%------------------------------------------------------------

oe_create() ->
    corba:create(?MODULE, "IDL:omg.org/CosTransactions/Terminator:1.0").

oe_create_link() ->
    corba:create_link(?MODULE, "IDL:omg.org/CosTransactions/Terminator:1.0").

oe_create(Env) ->
    corba:create(?MODULE, "IDL:omg.org/CosTransactions/Terminator:1.0", Env).

oe_create_link(Env) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosTransactions/Terminator:1.0", Env).

oe_create(Env, RegName) ->
    corba:create(?MODULE, "IDL:omg.org/CosTransactions/Terminator:1.0", Env, RegName).

oe_create_link(Env, RegName) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosTransactions/Terminator:1.0", Env, RegName).

%%------------------------------------------------------------
%%
%% Init & terminate functions.
%%
%%------------------------------------------------------------

init(Env) ->
%% Call to implementation init
    corba:handle_init('CosTransactions_Terminator_impl', Env).

terminate(Reason, State) ->
    corba:handle_terminate('CosTransactions_Terminator_impl', Reason, State).


%%%% Operation: commit
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::HeuristicMixed, CosTransactions::HeuristicHazard
%%
handle_call({OE_THIS, OE_Context, commit, [Report_heuristics]}, _, OE_State) ->
  corba:handle_call('CosTransactions_Terminator_impl', commit, [Report_heuristics], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: rollback
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, rollback, []}, _, OE_State) ->
  corba:handle_call('CosTransactions_Terminator_impl', rollback, [], OE_State, OE_Context, OE_THIS, false);



%%%% Standard gen_server call handle
%%
handle_call(stop, _, State) ->
    {stop, normal, ok, State};

handle_call(_, _, State) ->
    {reply, catch corba:raise(#'BAD_OPERATION'{minor=1163001857, completion_status='COMPLETED_NO'}), State}.


%%%% Standard gen_server cast handle
%%
handle_cast(stop, State) ->
    {stop, normal, State};

handle_cast(_, State) ->
    {noreply, State}.


%%%% Standard gen_server handles
%%
handle_info(Info, State) ->
    corba:handle_info('CosTransactions_Terminator_impl', Info, State).


code_change(OldVsn, State, Extra) ->
    corba:handle_code_change('CosTransactions_Terminator_impl', OldVsn, State, Extra).

