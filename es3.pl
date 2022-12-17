%%%%%% 1 Same will check if two lists are the same
same ([] ,[]).
same ([ X| Xs ] ,[ X| Ys ]) :- same ( Xs , Ys ).

% same([3,9,2,6],[3,9,2,6])
% same([3,9,2,6],[3,1,2,6])
% same([3,9,2,6],[3,X,2,6])

%%%%%% 2 All elements in List1 are bigger than those in List2
all_bigger([] ,[]).
all_bigger([ X| Xs ] ,[ Y| Ys ]) :- 
	X > Y,  % can't be fully relational anymore
	all_bigger( Xs , Ys ).

% all_bigger([4,10,3,7],[3,9,2,6])
% all_bigger([4,10,3,7],[3,10,2,6])
% all_bigger([4,X,3,7],[3,10,2,6]) % halt, for reason above

%%%%%% 3 List1 should contain elements all also in List2
search(X ,[ X| _ ]).
search(X ,[ _| Xs ]) :- search (X , Xs ) .

sublist([], List).
sublist([X|Xs], List) :- 
	search(X, List),
	sublist(Xs, List).

% sublist([1,2],[5,3,2,1]).
