%% @author author <author@example.com>
%% @copyright YYYY author.

%% @doc Callbacks for the mochirack application.

-module(mochirack_app).
-author('author <author@example.com>').

-behaviour(application).
-export([start/2,stop/1]).


%% @spec start(_Type, _StartArgs) -> ServerRet
%% @doc application start callback for mochirack.
start(_Type, _StartArgs) ->
    mochirack_deps:ensure(),
    mochirack_sup:start_link().

%% @spec stop(_State) -> ServerRet
%% @doc application stop callback for mochirack.
stop(_State) ->
    ok.
