%%%%%% 1 create a sequence od 0s
seq(0 ,[]).
seq(N ,[0| T ]) :- N2 is N - 1, seq( N2 ,T ).

% seq(5 ,[0 ,0 ,0 ,0 ,0]).

%%%%%% 2 create a sequence descending
seqR(0 ,[0]).
seqR(N ,[N| T]) :- N2 is N - 1, seqR( N2 ,T ).

% seqR(4 ,[4 ,3 ,2 ,1 ,0]).
% seqR(4 ,[4 ,3 ,X ,1 ,0]).

%%%%%% 3A put elem in last position of list
last([], N, [N]).
last([X|Xs], N, [X|List]) :- 
	last(Xs, N, List).
%last([1,2,3],5,[1,2,3,5]).

%%%%%% 3B create a sequence ascending
seqR2(0, [0]).
seqR2(N, ListO) :-
	N2 is N-1, 
	seqR2(N2, ListO2),
	last(ListO2, N, ListO).

%seqR2(4,[0 ,1 ,2 ,3 ,4]).
