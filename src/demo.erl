%% @author tukna
%% @doc @todo Add description to demo.

-module(demo).
%% ====================================================================
%% API functions
%% ====================================================================
-export([print/1, factorial/1, reduce/1, len/1, duplicate/2, reverse/1, element/1, sum_odd/1, 
		 sum_even/1, find_max/1, find_min/1, max_recursive/1, min_recursive/1, collatz/1, remove_dups/1]).
%% ====================================================================
%% Internal functions
%% ====================================================================
%%
%%In ra N lần string Hello. 
%% ==================================================================== 
print(N) when N =<1 -> 
	io:fwrite("Hello~n");
	print(N) when N > 0 ->
		io:fwrite("Hello~n"),
		print(N-1). 

%%Tính giai thừa một số.
%% ==================================================================== 
factorial(0)-> 
	1;
	factorial(Number) when Number > 0 -> 
  		Number*factorial(Number-1).

%%Tính tổng các giá trị từ 1 đến N.
%% ==================================================================== 
reduce(0) -> 
	0;
	reduce(N) when N > 0 -> 
		N + reduce(N-1).

%%Tính độ dài của một list.
%% ==================================================================== 
len([]) -> 
	0;
	len(List) ->
		[H|L] = List,
		1 + len(L).

%%Trả về một list gồm N phần tử M.
%% ==================================================================== 
duplicate(0,M) ->
	[];
	duplicate(N,M) when N > 0 ->
		[M|duplicate(N-1,M)].

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

max_recursive([], N) -> N;
max_recursive([H|T], N) when H > N -> max_recursive(T, H);
max_recursive([H|T], N) when H =< N -> max_recursive(T, N).

%%Tìm số nhỏ nhất trong list
%% ===================================================================  
%% use lists:min/1
find_min(List) ->
	io:fwrite("~w~n", [lists:min(List)]).
%% use recursive 
min_recursive(List) -> 
	[H|T] = List,
	min_recursive(T, H).

min_recursive([], N) -> N;
min_recursive([H|T], N) when H < N -> min_recursive(T, H);
min_recursive([H|T], N) when H >= N -> min_recursive(T, N).
%% 
%%===================================================================
collatz(1)->
	[1];
collatz(N) when N rem 2 == 0 -> 
	[N|collatz(N div 2)];
collatz(N) when N rem 2 /= 0 -> 
	[N|collatz(3*N+1)].
%%
%%================================================================== 
remove_dups([]) -> 
	[];
remove_dups(List) -> 
	[H|T] = List,
	[H | [X || X <- remove_dups(T), X /= H]].








