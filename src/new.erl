%% @author tukna
%% @doc @todo Add description to new.


-module(new).

%% ====================================================================
%% API functions
%% ====================================================================
-export([test2/2]).



%% ====================================================================
%% Internal functions
%% ====================================================================

start(0) ->
 	io:fwrite("False~n");
 	start(I) when I /= 0 ->
 	io:fwrite("True~n").

test2(Str1, Str2) ->
 	Index = string:str(Str1,Str2), 
 	start(Index).

