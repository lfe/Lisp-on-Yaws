%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosNaming_NamingContextExt_NotFound
%% Source: /net/isildur/ldisk/daily_build/r14b03_prebuild_opu_o.2011-05-24_13/otp_src_R14B03/lib/orber/COSS/CosNaming/cos_naming_ext.idl
%% IC vsn: 4.2.26
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosNaming_NamingContextExt_NotFound').
-ic_compiled("4_2_26").


-include("CosNaming_NamingContextExt.hrl").

-export([tc/0,id/0,name/0]).



%% returns type code
tc() -> {tk_except,"IDL:omg.org/CosNaming/NamingContext/NotFound:1.0",
            "NotFound",
            [{"why",
              {tk_enum,
                  "IDL:omg.org/CosNaming/NamingContext/NotFoundReason:1.0",
                  "NotFoundReason",
                  ["missing_node","not_context","not_object"]}},
             {"rest_of_name",
              {tk_sequence,
                  {tk_struct,"IDL:omg.org/CosNaming/NameComponent:1.0",
                      "NameComponent",
                      [{"id",{tk_string,0}},{"kind",{tk_string,0}}]},
                  0}}]}.

%% returns id
id() -> "IDL:CosNaming/NamingContextExt/NotFound:1.0".

%% returns name
name() -> "CosNaming_NamingContextExt_NotFound".



