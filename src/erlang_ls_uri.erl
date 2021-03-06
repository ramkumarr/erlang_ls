%%==============================================================================
%% Library to parse RFC-3986 URIs
%%==============================================================================
%% For details, see: http://tools.ietf.org/html/rfc3986
%%==============================================================================
-module(erlang_ls_uri).

%%==============================================================================
%% Exports
%%==============================================================================
-export([ path/1 ]).

%%==============================================================================
%% Includes
%%==============================================================================
-include("erlang_ls.hrl").

-spec path(uri()) -> uri_path().
path(<<"file://", Path/binary>>) ->
  Path.
