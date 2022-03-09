%% @author tukna
%% @doc @todo Add description to list.


-module(list).

%% ====================================================================
%% API functions
%% ====================================================================
-export([reverse/1, element/1, sum_odd/1, sum_even/1, find_max/1, find_min/1, max_recursive/1, min_recursive/1]).



%% ====================================================================
%% Internal functions
%% ====================================================================

%%Đảo ngược list.
%% ==================================================================== 
reverse([]) -> 
	[];
	reverse(List) ->
		[H|T] = List,
		reverse(T)++[H].

%%In ra từng phần tử của list.
%% ==================================================================== 
element([]) -> 
	[];
	element(List) ->
		[H|T] = List,
		io:fwrite("~w~n", [H]),
		element(T).

%%Tổng các số lẻ trong list
%% ===================================================================  
sum_odd([]) ->
	0;
sum_odd(List) ->
	[H|T] = List,
	if 
		H rem 2 /= 0 -> H + sum_odd(T);
		H rem 2 == 0 -> sum_odd(T)
	end.
		
%%Tổng các số chẵn trong list
%% ===================================================================  
sum_even([]) ->
	0;
sum_even(List) ->
	[H|T] = List,
	if 
		H rem 2 == 0 -> H + sum_even(T);
		H rem 2 /= 0 -> sum_even(T)
	end.

%%Tìm số lớn nhất trong list
%% ===================================================================  
%% use lists:max/1 
find_max(List) ->
	io:fwrite("~w~n", [lists:max(List)]).

%% use recursive
max_recursive(List) -> 
	[H|T] = List,
	max_recursive(T, H).

max_recursive([], Max) -> Max;
max_recursive([H|T], Max) when H > Max -> max_recursive(T, H);
max_recursive([H|T], Max) when H =< Max -> max_recursive(T, Max).

%%Tìm số nhỏ nhất trong list
%% ===================================================================  
%% use lists:min/1
find_min(List) ->
	io:fwrite("~w~n", [lists:min(List)]).

%% use recursive 
min_recursive(List) -> 
	[H|T] = List,
	min_recursive(T, H).

min_recursive([], Min) -> Min;
min_recursive([H|T], Min) when H < Min -> min_recursive(T, H);
min_recursive([H|T], Min) when H >= Min -> min_recursive(T, Min).










