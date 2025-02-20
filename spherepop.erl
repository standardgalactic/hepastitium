-module(spherepop).
-export([start/0]).

% Represents nested expressions as nested lists
start() ->
    Expression = [add, 1, [add, 2, [add, "pop me", "pop me too"]]],
    io:format("Initial Expression: ~p~n", [Expression]),
    PopResult = pop(Expression),
    io:format("After Pop: ~p~n", [PopResult]).

% Function to "pop" the innermost bubble
pop([add, A, B]) when is_list(A) ->
    [add, pop(A), B];
pop([add, A, B]) when is_list(B) ->
    [add, A, pop(B)];
pop([add, A, B]) ->
    A + B;
pop(Value) ->
    Value.

% Example usage
