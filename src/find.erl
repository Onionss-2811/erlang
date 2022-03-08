%% @author tukna
%% @doc @todo Add description to find.


-module(find).

%% ====================================================================
%% API functions
%% ====================================================================
-export([check_string/2, check_string_recursive/2]).

%% ====================================================================
%% Internal functions
%% ====================================================================

%% use string:str/2
%% ==================================================================== 
check_string(Str1, Str2) ->
	Str1_lower = string:to_lower(Str1),
	Str2_lower = string:to_lower(Str2),
	Index = string:str(Str2_lower,Str1_lower), 
	check_index(Index).

check_index(0) ->
	false;
	check_index(Index) when Index /= 0 ->
	true.

%% use recursive
%% ==================================================================== 
check_string_recursive(Str1, Str2) ->
	Str1_lower = string:to_lower(Str1),
	Str2_lower = string:to_lower(Str2),
	check_func(Str1_lower, Str2_lower).
	
check_func([], _) -> true;
check_func([H1 | T1], [H2 | T2] ) ->
	if H1 /= H2 -> check_func([H1 | T1], T2);
	   H1 == H2 -> check_func(T1, T2)
	end;
check_func(_, _) -> false.
