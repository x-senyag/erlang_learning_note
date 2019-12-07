-module(hello_escript).
-export([main/1]).

main(Args) ->
    io:format("Hello, World!~n").

% Shell:
% $ escript hello_escript.erl
% Hello, World!