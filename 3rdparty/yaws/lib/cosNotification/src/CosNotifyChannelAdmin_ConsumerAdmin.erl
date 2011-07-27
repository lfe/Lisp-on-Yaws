%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosNotifyChannelAdmin_ConsumerAdmin
%% Source: /net/isildur/ldisk/daily_build/r14b03_prebuild_opu_o.2011-05-24_13/otp_src_R14B03/lib/cosNotification/src/CosNotifyChannelAdmin.idl
%% IC vsn: 4.2.26
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosNotifyChannelAdmin_ConsumerAdmin').
-ic_compiled("4_2_26").


%% Interface functions
-export(['_get_MyID'/1, '_get_MyID'/2, '_get_MyChannel'/1]).
-export(['_get_MyChannel'/2, '_get_MyOperator'/1, '_get_MyOperator'/2]).
-export(['_get_priority_filter'/1, '_get_priority_filter'/2, '_set_priority_filter'/2]).
-export(['_set_priority_filter'/3, '_get_lifetime_filter'/1, '_get_lifetime_filter'/2]).
-export(['_set_lifetime_filter'/2, '_set_lifetime_filter'/3, '_get_pull_suppliers'/1]).
-export(['_get_pull_suppliers'/2, '_get_push_suppliers'/1, '_get_push_suppliers'/2]).
-export([get_proxy_supplier/2, get_proxy_supplier/3, obtain_notification_pull_supplier/2]).
-export([obtain_notification_pull_supplier/3, obtain_notification_push_supplier/2, obtain_notification_push_supplier/3]).
-export([destroy/1, destroy/2]).

%% Exports from "CosNotification::QoSAdmin"
-export([get_qos/1, get_qos/2, set_qos/2]).
-export([set_qos/3, validate_qos/2, validate_qos/3]).

%% Exports from "CosNotifyComm::NotifySubscribe"
-export([subscription_change/3, subscription_change/4]).

%% Exports from "CosNotifyFilter::FilterAdmin"
-export([add_filter/2, add_filter/3, remove_filter/2]).
-export([remove_filter/3, get_filter/2, get_filter/3]).
-export([get_all_filters/1, get_all_filters/2, remove_all_filters/1]).
-export([remove_all_filters/2]).

%% Exports from "CosEventChannelAdmin::ConsumerAdmin"
-export([obtain_push_supplier/1, obtain_push_supplier/2, obtain_pull_supplier/1]).
-export([obtain_pull_supplier/2]).

%% Exports from "oe_CosNotificationComm::Event"
-export([callSeq/3, callSeq/4, callAny/3]).
-export([callAny/4]).

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



%%%% Operation: '_get_MyID'
%% 
%%   Returns: RetVal
%%
'_get_MyID'(OE_THIS) ->
    corba:call(OE_THIS, '_get_MyID', [], ?MODULE).

'_get_MyID'(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, '_get_MyID', [], ?MODULE, OE_Options).

%%%% Operation: '_get_MyChannel'
%% 
%%   Returns: RetVal
%%
'_get_MyChannel'(OE_THIS) ->
    corba:call(OE_THIS, '_get_MyChannel', [], ?MODULE).

'_get_MyChannel'(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, '_get_MyChannel', [], ?MODULE, OE_Options).

%%%% Operation: '_get_MyOperator'
%% 
%%   Returns: RetVal
%%
'_get_MyOperator'(OE_THIS) ->
    corba:call(OE_THIS, '_get_MyOperator', [], ?MODULE).

'_get_MyOperator'(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, '_get_MyOperator', [], ?MODULE, OE_Options).

%%%% Operation: '_get_priority_filter'
%% 
%%   Returns: RetVal
%%
'_get_priority_filter'(OE_THIS) ->
    corba:call(OE_THIS, '_get_priority_filter', [], ?MODULE).

'_get_priority_filter'(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, '_get_priority_filter', [], ?MODULE, OE_Options).

%%%% Operation: '_set_priority_filter'
%% 
%%   Returns: RetVal
%%
'_set_priority_filter'(OE_THIS, OE_Value) ->
    corba:call(OE_THIS, '_set_priority_filter', [OE_Value], ?MODULE).

'_set_priority_filter'(OE_THIS, OE_Options, OE_Value) ->
    corba:call(OE_THIS, '_set_priority_filter', [OE_Value], ?MODULE, OE_Options).

%%%% Operation: '_get_lifetime_filter'
%% 
%%   Returns: RetVal
%%
'_get_lifetime_filter'(OE_THIS) ->
    corba:call(OE_THIS, '_get_lifetime_filter', [], ?MODULE).

'_get_lifetime_filter'(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, '_get_lifetime_filter', [], ?MODULE, OE_Options).

%%%% Operation: '_set_lifetime_filter'
%% 
%%   Returns: RetVal
%%
'_set_lifetime_filter'(OE_THIS, OE_Value) ->
    corba:call(OE_THIS, '_set_lifetime_filter', [OE_Value], ?MODULE).

'_set_lifetime_filter'(OE_THIS, OE_Options, OE_Value) ->
    corba:call(OE_THIS, '_set_lifetime_filter', [OE_Value], ?MODULE, OE_Options).

%%%% Operation: '_get_pull_suppliers'
%% 
%%   Returns: RetVal
%%
'_get_pull_suppliers'(OE_THIS) ->
    corba:call(OE_THIS, '_get_pull_suppliers', [], ?MODULE).

'_get_pull_suppliers'(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, '_get_pull_suppliers', [], ?MODULE, OE_Options).

%%%% Operation: '_get_push_suppliers'
%% 
%%   Returns: RetVal
%%
'_get_push_suppliers'(OE_THIS) ->
    corba:call(OE_THIS, '_get_push_suppliers', [], ?MODULE).

'_get_push_suppliers'(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, '_get_push_suppliers', [], ?MODULE, OE_Options).

%%%% Operation: get_proxy_supplier
%% 
%%   Returns: RetVal
%%   Raises:  CosNotifyChannelAdmin::ProxyNotFound
%%
get_proxy_supplier(OE_THIS, Proxy_id) ->
    corba:call(OE_THIS, get_proxy_supplier, [Proxy_id], ?MODULE).

get_proxy_supplier(OE_THIS, OE_Options, Proxy_id) ->
    corba:call(OE_THIS, get_proxy_supplier, [Proxy_id], ?MODULE, OE_Options).

%%%% Operation: obtain_notification_pull_supplier
%% 
%%   Returns: RetVal, Proxy_id
%%   Raises:  CosNotifyChannelAdmin::AdminLimitExceeded
%%
obtain_notification_pull_supplier(OE_THIS, Ctype) ->
    corba:call(OE_THIS, obtain_notification_pull_supplier, [Ctype], ?MODULE).

obtain_notification_pull_supplier(OE_THIS, OE_Options, Ctype) ->
    corba:call(OE_THIS, obtain_notification_pull_supplier, [Ctype], ?MODULE, OE_Options).

%%%% Operation: obtain_notification_push_supplier
%% 
%%   Returns: RetVal, Proxy_id
%%   Raises:  CosNotifyChannelAdmin::AdminLimitExceeded
%%
obtain_notification_push_supplier(OE_THIS, Ctype) ->
    corba:call(OE_THIS, obtain_notification_push_supplier, [Ctype], ?MODULE).

obtain_notification_push_supplier(OE_THIS, OE_Options, Ctype) ->
    corba:call(OE_THIS, obtain_notification_push_supplier, [Ctype], ?MODULE, OE_Options).

%%%% Operation: destroy
%% 
%%   Returns: RetVal
%%
destroy(OE_THIS) ->
    corba:call(OE_THIS, destroy, [], ?MODULE).

destroy(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, destroy, [], ?MODULE, OE_Options).

%%%% Operation: get_qos
%% 
%%   Returns: RetVal
%%
get_qos(OE_THIS) ->
    corba:call(OE_THIS, get_qos, [], ?MODULE).

get_qos(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, get_qos, [], ?MODULE, OE_Options).

%%%% Operation: set_qos
%% 
%%   Returns: RetVal
%%   Raises:  CosNotification::UnsupportedQoS
%%
set_qos(OE_THIS, Qos) ->
    corba:call(OE_THIS, set_qos, [Qos], ?MODULE).

set_qos(OE_THIS, OE_Options, Qos) ->
    corba:call(OE_THIS, set_qos, [Qos], ?MODULE, OE_Options).

%%%% Operation: validate_qos
%% 
%%   Returns: RetVal, Available_qos
%%   Raises:  CosNotification::UnsupportedQoS
%%
validate_qos(OE_THIS, Required_qos) ->
    corba:call(OE_THIS, validate_qos, [Required_qos], ?MODULE).

validate_qos(OE_THIS, OE_Options, Required_qos) ->
    corba:call(OE_THIS, validate_qos, [Required_qos], ?MODULE, OE_Options).

%%%% Operation: subscription_change
%% 
%%   Returns: RetVal
%%   Raises:  CosNotifyComm::InvalidEventType
%%
subscription_change(OE_THIS, Added, Removed) ->
    corba:call(OE_THIS, subscription_change, [Added, Removed], ?MODULE).

subscription_change(OE_THIS, OE_Options, Added, Removed) ->
    corba:call(OE_THIS, subscription_change, [Added, Removed], ?MODULE, OE_Options).

%%%% Operation: add_filter
%% 
%%   Returns: RetVal
%%
add_filter(OE_THIS, New_filter) ->
    corba:call(OE_THIS, add_filter, [New_filter], ?MODULE).

add_filter(OE_THIS, OE_Options, New_filter) ->
    corba:call(OE_THIS, add_filter, [New_filter], ?MODULE, OE_Options).

%%%% Operation: remove_filter
%% 
%%   Returns: RetVal
%%   Raises:  CosNotifyFilter::FilterNotFound
%%
remove_filter(OE_THIS, Filter) ->
    corba:call(OE_THIS, remove_filter, [Filter], ?MODULE).

remove_filter(OE_THIS, OE_Options, Filter) ->
    corba:call(OE_THIS, remove_filter, [Filter], ?MODULE, OE_Options).

%%%% Operation: get_filter
%% 
%%   Returns: RetVal
%%   Raises:  CosNotifyFilter::FilterNotFound
%%
get_filter(OE_THIS, Filter) ->
    corba:call(OE_THIS, get_filter, [Filter], ?MODULE).

get_filter(OE_THIS, OE_Options, Filter) ->
    corba:call(OE_THIS, get_filter, [Filter], ?MODULE, OE_Options).

%%%% Operation: get_all_filters
%% 
%%   Returns: RetVal
%%
get_all_filters(OE_THIS) ->
    corba:call(OE_THIS, get_all_filters, [], ?MODULE).

get_all_filters(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, get_all_filters, [], ?MODULE, OE_Options).

%%%% Operation: remove_all_filters
%% 
%%   Returns: RetVal
%%
remove_all_filters(OE_THIS) ->
    corba:call(OE_THIS, remove_all_filters, [], ?MODULE).

remove_all_filters(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, remove_all_filters, [], ?MODULE, OE_Options).

%%%% Operation: obtain_push_supplier
%% 
%%   Returns: RetVal
%%
obtain_push_supplier(OE_THIS) ->
    corba:call(OE_THIS, obtain_push_supplier, [], ?MODULE).

obtain_push_supplier(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, obtain_push_supplier, [], ?MODULE, OE_Options).

%%%% Operation: obtain_pull_supplier
%% 
%%   Returns: RetVal
%%
obtain_pull_supplier(OE_THIS) ->
    corba:call(OE_THIS, obtain_pull_supplier, [], ?MODULE).

obtain_pull_supplier(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, obtain_pull_supplier, [], ?MODULE, OE_Options).

%%%% Operation: callSeq
%% 
%%   Returns: RetVal
%%
callSeq(OE_THIS, Events, Stat) ->
    corba:call(OE_THIS, callSeq, [Events, Stat], ?MODULE).

callSeq(OE_THIS, OE_Options, Events, Stat) ->
    corba:call(OE_THIS, callSeq, [Events, Stat], ?MODULE, OE_Options).

%%%% Operation: callAny
%% 
%%   Returns: RetVal
%%
callAny(OE_THIS, Event, Stat) ->
    corba:call(OE_THIS, callAny, [Event, Stat], ?MODULE).

callAny(OE_THIS, OE_Options, Event, Stat) ->
    corba:call(OE_THIS, callAny, [Event, Stat], ?MODULE, OE_Options).

%%------------------------------------------------------------
%%
%% Inherited Interfaces
%%
%%------------------------------------------------------------
oe_is_a("IDL:omg.org/CosNotifyChannelAdmin/ConsumerAdmin:1.0") -> true;
oe_is_a("IDL:omg.org/CosNotification/QoSAdmin:1.0") -> true;
oe_is_a("IDL:omg.org/CosNotifyComm/NotifySubscribe:1.0") -> true;
oe_is_a("IDL:omg.org/CosNotifyFilter/FilterAdmin:1.0") -> true;
oe_is_a("IDL:omg.org/CosEventChannelAdmin/ConsumerAdmin:1.0") -> true;
oe_is_a("IDL:oe_CosNotificationComm/Event:1.0") -> true;
oe_is_a(_) -> false.

%%------------------------------------------------------------
%%
%% Interface TypeCode
%%
%%------------------------------------------------------------
oe_tc('_get_MyID') -> 
	{tk_long,[],[]};
oe_tc('_get_MyChannel') -> 
	{{tk_objref,"IDL:omg.org/CosNotifyChannelAdmin/EventChannel:1.0",
                    "EventChannel"},
         [],[]};
oe_tc('_get_MyOperator') -> 
	{{tk_enum,"IDL:omg.org/CosNotifyChannelAdmin/InterFilterGroupOperator:1.0",
                  "InterFilterGroupOperator",
                  ["AND_OP","OR_OP"]},
         [],[]};
oe_tc('_get_priority_filter') -> 
	{{tk_objref,"IDL:omg.org/CosNotifyFilter/MappingFilter:1.0",
                    "MappingFilter"},
         [],[]};
oe_tc('_set_priority_filter') -> 
	{tk_void,[{tk_objref,"IDL:omg.org/CosNotifyFilter/MappingFilter:1.0",
                             "MappingFilter"}],
                 []};
oe_tc('_get_lifetime_filter') -> 
	{{tk_objref,"IDL:omg.org/CosNotifyFilter/MappingFilter:1.0",
                    "MappingFilter"},
         [],[]};
oe_tc('_set_lifetime_filter') -> 
	{tk_void,[{tk_objref,"IDL:omg.org/CosNotifyFilter/MappingFilter:1.0",
                             "MappingFilter"}],
                 []};
oe_tc('_get_pull_suppliers') -> 
	{{tk_sequence,tk_long,0},[],[]};
oe_tc('_get_push_suppliers') -> 
	{{tk_sequence,tk_long,0},[],[]};
oe_tc(get_proxy_supplier) -> 
	{{tk_objref,"IDL:omg.org/CosNotifyChannelAdmin/ProxySupplier:1.0",
                    "ProxySupplier"},
         [tk_long],
         []};
oe_tc(obtain_notification_pull_supplier) -> 
	{{tk_objref,"IDL:omg.org/CosNotifyChannelAdmin/ProxySupplier:1.0",
                    "ProxySupplier"},
         [{tk_enum,"IDL:omg.org/CosNotifyChannelAdmin/ClientType:1.0",
                   "ClientType",
                   ["ANY_EVENT","STRUCTURED_EVENT","SEQUENCE_EVENT"]}],
         [tk_long]};
oe_tc(obtain_notification_push_supplier) -> 
	{{tk_objref,"IDL:omg.org/CosNotifyChannelAdmin/ProxySupplier:1.0",
                    "ProxySupplier"},
         [{tk_enum,"IDL:omg.org/CosNotifyChannelAdmin/ClientType:1.0",
                   "ClientType",
                   ["ANY_EVENT","STRUCTURED_EVENT","SEQUENCE_EVENT"]}],
         [tk_long]};
oe_tc(destroy) -> 
	{tk_void,[],[]};
oe_tc(get_qos) -> 'CosNotification_QoSAdmin':oe_tc(get_qos);
oe_tc(set_qos) -> 'CosNotification_QoSAdmin':oe_tc(set_qos);
oe_tc(validate_qos) -> 'CosNotification_QoSAdmin':oe_tc(validate_qos);
oe_tc(subscription_change) -> 'CosNotifyComm_NotifySubscribe':oe_tc(subscription_change);
oe_tc(add_filter) -> 'CosNotifyFilter_FilterAdmin':oe_tc(add_filter);
oe_tc(remove_filter) -> 'CosNotifyFilter_FilterAdmin':oe_tc(remove_filter);
oe_tc(get_filter) -> 'CosNotifyFilter_FilterAdmin':oe_tc(get_filter);
oe_tc(get_all_filters) -> 'CosNotifyFilter_FilterAdmin':oe_tc(get_all_filters);
oe_tc(remove_all_filters) -> 'CosNotifyFilter_FilterAdmin':oe_tc(remove_all_filters);
oe_tc(obtain_push_supplier) -> 'CosEventChannelAdmin_ConsumerAdmin':oe_tc(obtain_push_supplier);
oe_tc(obtain_pull_supplier) -> 'CosEventChannelAdmin_ConsumerAdmin':oe_tc(obtain_pull_supplier);
oe_tc(callSeq) -> oe_CosNotificationComm_Event:oe_tc(callSeq);
oe_tc(callAny) -> oe_CosNotificationComm_Event:oe_tc(callAny);
oe_tc(_) -> undefined.

oe_get_interface() -> 
	[{"callAny", oe_CosNotificationComm_Event:oe_tc(callAny)},
	{"callSeq", oe_CosNotificationComm_Event:oe_tc(callSeq)},
	{"obtain_pull_supplier", 'CosEventChannelAdmin_ConsumerAdmin':oe_tc(obtain_pull_supplier)},
	{"obtain_push_supplier", 'CosEventChannelAdmin_ConsumerAdmin':oe_tc(obtain_push_supplier)},
	{"remove_all_filters", 'CosNotifyFilter_FilterAdmin':oe_tc(remove_all_filters)},
	{"get_all_filters", 'CosNotifyFilter_FilterAdmin':oe_tc(get_all_filters)},
	{"get_filter", 'CosNotifyFilter_FilterAdmin':oe_tc(get_filter)},
	{"remove_filter", 'CosNotifyFilter_FilterAdmin':oe_tc(remove_filter)},
	{"add_filter", 'CosNotifyFilter_FilterAdmin':oe_tc(add_filter)},
	{"subscription_change", 'CosNotifyComm_NotifySubscribe':oe_tc(subscription_change)},
	{"validate_qos", 'CosNotification_QoSAdmin':oe_tc(validate_qos)},
	{"set_qos", 'CosNotification_QoSAdmin':oe_tc(set_qos)},
	{"get_qos", 'CosNotification_QoSAdmin':oe_tc(get_qos)},
	{"destroy", oe_tc(destroy)},
	{"obtain_notification_push_supplier", oe_tc(obtain_notification_push_supplier)},
	{"obtain_notification_pull_supplier", oe_tc(obtain_notification_pull_supplier)},
	{"get_proxy_supplier", oe_tc(get_proxy_supplier)},
	{"_get_push_suppliers", oe_tc('_get_push_suppliers')},
	{"_get_pull_suppliers", oe_tc('_get_pull_suppliers')},
	{"_get_lifetime_filter", oe_tc('_get_lifetime_filter')},
	{"_set_lifetime_filter", oe_tc('_set_lifetime_filter')},
	{"_get_priority_filter", oe_tc('_get_priority_filter')},
	{"_set_priority_filter", oe_tc('_set_priority_filter')},
	{"_get_MyOperator", oe_tc('_get_MyOperator')},
	{"_get_MyChannel", oe_tc('_get_MyChannel')},
	{"_get_MyID", oe_tc('_get_MyID')}].




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
    "IDL:omg.org/CosNotifyChannelAdmin/ConsumerAdmin:1.0".


%%------------------------------------------------------------
%%
%% Object creation functions.
%%
%%------------------------------------------------------------

oe_create() ->
    corba:create(?MODULE, "IDL:omg.org/CosNotifyChannelAdmin/ConsumerAdmin:1.0").

oe_create_link() ->
    corba:create_link(?MODULE, "IDL:omg.org/CosNotifyChannelAdmin/ConsumerAdmin:1.0").

oe_create(Env) ->
    corba:create(?MODULE, "IDL:omg.org/CosNotifyChannelAdmin/ConsumerAdmin:1.0", Env).

oe_create_link(Env) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosNotifyChannelAdmin/ConsumerAdmin:1.0", Env).

oe_create(Env, RegName) ->
    corba:create(?MODULE, "IDL:omg.org/CosNotifyChannelAdmin/ConsumerAdmin:1.0", Env, RegName).

oe_create_link(Env, RegName) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosNotifyChannelAdmin/ConsumerAdmin:1.0", Env, RegName).

%%------------------------------------------------------------
%%
%% Init & terminate functions.
%%
%%------------------------------------------------------------

init(Env) ->
%% Call to implementation init
    corba:handle_init('CosNotifyChannelAdmin_ConsumerAdmin_impl', Env).

terminate(Reason, State) ->
    corba:handle_terminate('CosNotifyChannelAdmin_ConsumerAdmin_impl', Reason, State).


%%%% Operation: '_get_MyID'
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, '_get_MyID', []}, OE_From, OE_State) ->
  corba:handle_call('CosNotifyChannelAdmin_ConsumerAdmin_impl', '_get_MyID', [], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: '_get_MyChannel'
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, '_get_MyChannel', []}, OE_From, OE_State) ->
  corba:handle_call('CosNotifyChannelAdmin_ConsumerAdmin_impl', '_get_MyChannel', [], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: '_get_MyOperator'
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, '_get_MyOperator', []}, OE_From, OE_State) ->
  corba:handle_call('CosNotifyChannelAdmin_ConsumerAdmin_impl', '_get_MyOperator', [], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: '_get_priority_filter'
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, '_get_priority_filter', []}, OE_From, OE_State) ->
  corba:handle_call('CosNotifyChannelAdmin_ConsumerAdmin_impl', '_get_priority_filter', [], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: '_set_priority_filter'
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, '_set_priority_filter', [OE_Value]}, OE_From, OE_State) ->
  corba:handle_call('CosNotifyChannelAdmin_ConsumerAdmin_impl', '_set_priority_filter', [OE_Value], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: '_get_lifetime_filter'
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, '_get_lifetime_filter', []}, OE_From, OE_State) ->
  corba:handle_call('CosNotifyChannelAdmin_ConsumerAdmin_impl', '_get_lifetime_filter', [], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: '_set_lifetime_filter'
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, '_set_lifetime_filter', [OE_Value]}, OE_From, OE_State) ->
  corba:handle_call('CosNotifyChannelAdmin_ConsumerAdmin_impl', '_set_lifetime_filter', [OE_Value], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: '_get_pull_suppliers'
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, '_get_pull_suppliers', []}, OE_From, OE_State) ->
  corba:handle_call('CosNotifyChannelAdmin_ConsumerAdmin_impl', '_get_pull_suppliers', [], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: '_get_push_suppliers'
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, '_get_push_suppliers', []}, OE_From, OE_State) ->
  corba:handle_call('CosNotifyChannelAdmin_ConsumerAdmin_impl', '_get_push_suppliers', [], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: get_proxy_supplier
%% 
%%   Returns: RetVal
%%   Raises:  CosNotifyChannelAdmin::ProxyNotFound
%%
handle_call({OE_THIS, OE_Context, get_proxy_supplier, [Proxy_id]}, OE_From, OE_State) ->
  corba:handle_call('CosNotifyChannelAdmin_ConsumerAdmin_impl', get_proxy_supplier, [Proxy_id], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: obtain_notification_pull_supplier
%% 
%%   Returns: RetVal, Proxy_id
%%   Raises:  CosNotifyChannelAdmin::AdminLimitExceeded
%%
handle_call({OE_THIS, OE_Context, obtain_notification_pull_supplier, [Ctype]}, OE_From, OE_State) ->
  corba:handle_call('CosNotifyChannelAdmin_ConsumerAdmin_impl', obtain_notification_pull_supplier, [Ctype], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: obtain_notification_push_supplier
%% 
%%   Returns: RetVal, Proxy_id
%%   Raises:  CosNotifyChannelAdmin::AdminLimitExceeded
%%
handle_call({OE_THIS, OE_Context, obtain_notification_push_supplier, [Ctype]}, OE_From, OE_State) ->
  corba:handle_call('CosNotifyChannelAdmin_ConsumerAdmin_impl', obtain_notification_push_supplier, [Ctype], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: destroy
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, destroy, []}, OE_From, OE_State) ->
  corba:handle_call('CosNotifyChannelAdmin_ConsumerAdmin_impl', destroy, [], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: get_qos
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, get_qos, []}, OE_From, OE_State) ->
  corba:handle_call('CosNotifyChannelAdmin_ConsumerAdmin_impl', get_qos, [], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: set_qos
%% 
%%   Returns: RetVal
%%   Raises:  CosNotification::UnsupportedQoS
%%
handle_call({OE_THIS, OE_Context, set_qos, [Qos]}, OE_From, OE_State) ->
  corba:handle_call('CosNotifyChannelAdmin_ConsumerAdmin_impl', set_qos, [Qos], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: validate_qos
%% 
%%   Returns: RetVal, Available_qos
%%   Raises:  CosNotification::UnsupportedQoS
%%
handle_call({OE_THIS, OE_Context, validate_qos, [Required_qos]}, OE_From, OE_State) ->
  corba:handle_call('CosNotifyChannelAdmin_ConsumerAdmin_impl', validate_qos, [Required_qos], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: subscription_change
%% 
%%   Returns: RetVal
%%   Raises:  CosNotifyComm::InvalidEventType
%%
handle_call({OE_THIS, OE_Context, subscription_change, [Added, Removed]}, OE_From, OE_State) ->
  corba:handle_call('CosNotifyChannelAdmin_ConsumerAdmin_impl', subscription_change, [Added, Removed], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: add_filter
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, add_filter, [New_filter]}, OE_From, OE_State) ->
  corba:handle_call('CosNotifyChannelAdmin_ConsumerAdmin_impl', add_filter, [New_filter], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: remove_filter
%% 
%%   Returns: RetVal
%%   Raises:  CosNotifyFilter::FilterNotFound
%%
handle_call({OE_THIS, OE_Context, remove_filter, [Filter]}, OE_From, OE_State) ->
  corba:handle_call('CosNotifyChannelAdmin_ConsumerAdmin_impl', remove_filter, [Filter], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: get_filter
%% 
%%   Returns: RetVal
%%   Raises:  CosNotifyFilter::FilterNotFound
%%
handle_call({OE_THIS, OE_Context, get_filter, [Filter]}, OE_From, OE_State) ->
  corba:handle_call('CosNotifyChannelAdmin_ConsumerAdmin_impl', get_filter, [Filter], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: get_all_filters
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, get_all_filters, []}, OE_From, OE_State) ->
  corba:handle_call('CosNotifyChannelAdmin_ConsumerAdmin_impl', get_all_filters, [], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: remove_all_filters
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, remove_all_filters, []}, OE_From, OE_State) ->
  corba:handle_call('CosNotifyChannelAdmin_ConsumerAdmin_impl', remove_all_filters, [], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: obtain_push_supplier
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, obtain_push_supplier, []}, OE_From, OE_State) ->
  corba:handle_call('CosNotifyChannelAdmin_ConsumerAdmin_impl', obtain_push_supplier, [], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: obtain_pull_supplier
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, obtain_pull_supplier, []}, OE_From, OE_State) ->
  corba:handle_call('CosNotifyChannelAdmin_ConsumerAdmin_impl', obtain_pull_supplier, [], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: callSeq
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, callSeq, [Events, Stat]}, OE_From, OE_State) ->
  corba:handle_call('CosNotifyChannelAdmin_ConsumerAdmin_impl', callSeq, [Events, Stat], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: callAny
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, callAny, [Event, Stat]}, OE_From, OE_State) ->
  corba:handle_call('CosNotifyChannelAdmin_ConsumerAdmin_impl', callAny, [Event, Stat], OE_State, OE_Context, OE_THIS, OE_From);



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
    corba:handle_info('CosNotifyChannelAdmin_ConsumerAdmin_impl', Info, State).


code_change(OldVsn, State, Extra) ->
    corba:handle_code_change('CosNotifyChannelAdmin_ConsumerAdmin_impl', OldVsn, State, Extra).

