%% @author tukna
%% @doc @todo Add description to demo.

-module(demo).
%% ====================================================================
%% API functions
%% ====================================================================
-export([print/1, factorial/1, reduce/1, len/1, duplicate/2, reverse/1, element/1]).



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























