%%%%%% last
last([X|Xs], L) :- last([X|Xs], X, L).
last([], L, L).
last([X|Xs], Lt, L) :-
	last(Xs, X, L).

%%%%%% map+1
map([], []).
map([X|Xs], [Y|Ys]) :- %premesso che
	Y is X+1,
	map(Xs, Ys).

%%%%% filter > 0
filter([], []).
filter([X|Xs], [X|Ys]) :-
	X>0, 
	filter(Xs, Ys).
filter([X|Xs], Ys) :-
	X=<0, 
	filter(Xs, Ys).
	