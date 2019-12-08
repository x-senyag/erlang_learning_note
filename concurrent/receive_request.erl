-module(receive_request).
-export([caculateAera/0]).

caculateAera() ->
    receive
      {rectangle, W, H} ->
        io:format("Area of rectangle is ~p~n", [W * H]);
      {circle, R} ->
        io:format("Area of circle is ~p~n", [3.14 * R * R]);
      _ ->
        io:format("We can only caculate area of rectangles or circles.")
    end.

% Eshell V9.2  (abort with ^G)
% 1> c(receive_request).
% {ok,receive_request}
% 2> P = spawn(receive_request, caculateAera, []).
% <0.67.0>
% 3> P ! {circle, 2}.
% Area of circle is 12.56
% {circle,2}