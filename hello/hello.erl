-module(hello).
-export([start/0]).

start() ->
    io:format("Hello, World!~n").

% Shell: 
% 
% $ erl # Erlang Shell
% 
% Eshell V9.2  (abort with ^G)
% 1> c(hello).
% {ok,hello}
% 2> hello:start().
% Hello, World!
% ok
% 3> halt().