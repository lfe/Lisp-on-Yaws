%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosNotification_NamedPropertyRangeSeq
%% Source: /net/isildur/ldisk/daily_build/r14b03_prebuild_opu_o.2011-05-24_13/otp_src_R14B03/lib/cosNotification/src/CosNotification.idl
%% IC vsn: 4.2.26
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosNotification_NamedPropertyRangeSeq').
-ic_compiled("4_2_26").


-include("CosNotification.hrl").

-export([tc/0,id/0,name/0]).



%% returns type code
tc() -> {tk_sequence,
            {tk_struct,"IDL:omg.org/CosNotification/NamedPropertyRange:1.0",
                "NamedPropertyRange",
                [{"name",{tk_string,0}},
                 {"range",
                  {tk_struct,"IDL:omg.org/CosNotification/PropertyRange:1.0",
                      "PropertyRange",
                      [{"low_val",tk_any},{"high_val",tk_any}]}}]},
            0}.

%% returns id
id() -> "IDL:omg.org/CosNotification/NamedPropertyRangeSeq:1.0".

%% returns name
name() -> "CosNotification_NamedPropertyRangeSeq".



