-module(macro_example).
-export([main/1]).

-define(
    M(X, Y), X + Y
).

main(Args) ->
    io:format("The value is "),
    io:write(macro_user()), % 3
    io:format("~n").

macro_user() ->
    ?M(1, 2). % X + Y = 1 + 2 = 3.