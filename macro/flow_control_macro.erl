-module(flow_control_macro).
-export([main/1, use_macro_1/0]).


% flow control in macro: 

-ifndef(M1). % Do the following lines if macro `M1` is not defined.
    -define(M1(), "Hello, This is macro `M1`.~n").
-endif.

% -undef(M1). % Delete `M1`: Causes the macro to behave as if it had never been defined.

-ifdef(M1). % Do the following lines if macro `M1` is defined. 
    -define(M2(), "Hello, This is macro `M2`, The `M1` still exists now.~n"). % choice.
    -else.
        -define(M2(), "Hello, This is macro `M2`, The `M1` has been removed.~n").
-endif.

main(Args) ->
    io:format(?M1()),
    io:format(?M2()).
