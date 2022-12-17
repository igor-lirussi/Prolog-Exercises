%%%%%% 1 Search in a List
search (X ,[ X| _ ]) .
search (X ,[ _| Xs ]) :- search (X , Xs ) .

% search(a,[a,b,c]). % query elem
% search(X,[a,b,c]). % iterates all elems
% search(a,X). % generate list with elem
% search(a,[X,b,Y,Z]). % generate list with elem

%%%%%% 2 Search 2 equal consecutive in a list
search2 (X ,[X ,X|_ ]) . % looks for two consecutive occurrences of Elem
search2 (X ,[ _| Xs ]) :- search2 (X , Xs ).

% search2(X,[b,c,a,a,d,d,e]).

%%%%%% 3 search 2 equal, with one in the middle, in a list
search_two(X, [X,_,X|_]).
search_two(X, [_|Xs]) :- search_two(X , Xs ).

% search_two(a,[b,c,a,a,d,e]). ? no
% search_two(a,[b,c,a,d,a,d,e]). ? yes
% search_two(X,[b,c,a,d,a,d,e]). % all elements that appear twice
% search_two(a,[b,c,a,d,a,d,X]). % value of X to make a appear twice

%%%%%% 4 looks for any Elem that occurs two times , anywhere, in a list
search_anytwo(X, [X|Xs]) :- search(X, Xs).
search_anytwo(X, [_|Xs]) :- search_anytwo(X, Xs).

% search_anytwo(a,[b,c,a,a,d,e]). ? yes
% search_anytwo(a,[b,c,a,d,e,a,d,e]). ? yes