
%%
%% %CopyrightBegin%
%% 
%% Copyright Ericsson AB 2009. All Rights Reserved.
%% 
%% The contents of this file are subject to the Erlang Public License,
%% Version 1.1, (the "License"); you may not use this file except in
%% compliance with the License. You should have received a copy of the
%% Erlang Public License along with this software. If not, it can be
%% retrieved online at http://www.erlang.org/.
%% 
%% Software distributed under the License is distributed on an "AS IS"
%% basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
%% the License for the specific language governing rights and limitations
%% under the License.
%% 
%% %CopyrightEnd%
%%
<<EXPORT:xrcctrl xrcctrl/3 xrcctrl:EXPORT>>

<<xrcctrl
%% @spec (Window::wxWindow:wxWindow(),Name::string(), Type::atom()) -> wx:wxObject()

%% @doc Looks up a control with Name in a window created with XML
%% resources. You can use it to set/get values from controls.
%% The object is type casted to <b>Type</b>.
%% Example: <br />
%%  Xrc = wxXmlResource:get(), <br />
%%  Dlg = wxDialog:new(), <br />
%%  true = wxXmlResource:loadDialog(Xrc, Dlg, Frame, "controls_dialog"), <br />
%%  LCtrl = xrcctrl(Dlg, "controls_listctrl", wxListCtrl), <br />
%%  wxListCtrl:insertColumn(LCtrl, 0, "Name", [{width, 200}]), <br />

xrcctrl(Window = #wx_ref{}, Name, Type) when is_list(Name), is_atom(Type) ->
    %% Func Id ~s 
    ID  = wxXmlResource:getXRCID(Name),
    Res = wxWindow:findWindow(Window,ID),
    wx:typeCast(Res, Type).

xrcctrl>>


