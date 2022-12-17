%%%%%% 1 Size will contain the number of elements in List
size([], 0).
size([_|Xs],N) :- size(Xs, N2), N is N2+1.

% size([b,c,a,d,e,a,d,e], N). % size of list
% size([b,c,a,d,e,a,d,e], 8). % veirfy is lenght 8

%%%%%% 2 SizeNZ will contain the number of elements in List, written using notation zero
sizeNZ([], zero).
sizeNZ([_|Xs],s(N2)) :- sizeNZ(Xs, N2).

% sizeNZ([a,b,c],X )  % size of list
% sizeNZ(L, s(s(s(zero)))). % lists of 3 elems

%%%%%% 3 Sum
sum([] , 0 ).
sum([X|Xs] , N ) :- sum(Xs , N2), N is N2 + X.

% sum ([1 ,2 ,3] , X ). %sum elems
% sum ([1 ,2 ,3] , 2 ). % verifies sum is 2

%%%%%% 4 average
average( List ,A) :- average( List ,0 ,0 , A).
average([] ,C ,S ,A ) :- A is S/C . %case empty list, calculate average passed
average([ X| Xs ],C ,S ,A) :- %recursive step, we need the average of the tail 
	C2 is C +1 ,	%calculate count
	S2 is S+X ,		%calculate sum
	average(Xs , C2 ,S2 ,A).	%average of the tail PASSING count and sum

% average([3,5,2,6],A)

%%%%%% 5 max
max(List, Mx) :- max(List, 0, Mx). %passes 0 as the beginner max, produces Max
max([], Mxt, Mx) :- Mx is Mxt. %empty list reached max is the passed one
max([X|Xs], Mxt, Mx) :-  % this matches if X > Mxt
	X > Mxt ,
	max(Xs, X, Mx).
max([X|Xs], Mxt, Mx) :- % this matches if X <= Mxt
	X =< Mxt ,
	max(Xs, Mxt, Mx).

% max([3,9,2,6],M)

%%%%%% 6 max min together
maxmin([X|Xs], Mx, Mn) :- maxmin(Xs, X, Mx, X, Mn). %passes X as the beginner max and min, produces Max and Min
maxmin([], Mxt, Mx, Mnt, Mn) :- Mx is Mxt, Mn is Mnt. %empty list reached, min and max global are the passed ones
maxmin([X|Xs], Mxt, Mx, Mnt, Mn) :-  % this matches if X > Mxt and X < Mnt
	X > Mxt ,
	X < Mnt ,
	maxmin(Xs, X, Mx, X, Mn).
maxmin([X|Xs], Mxt, Mx, Mnt, Mn) :-  % this matches if X > Mxt and X >= Mnt
	X > Mxt ,
	X >= Mnt ,
	maxmin(Xs, X, Mx, Mnt, Mn).
maxmin([X|Xs], Mxt, Mx, Mnt, Mn) :- % this matches if X <= Mxt and X < Mnt
	X =< Mxt ,
	X < Mnt ,
	maxmin(Xs, Mxt, Mx, X, Mn).
maxmin([X|Xs], Mxt, Mx, Mnt, Mn) :- % this matches if X <= Mxt and X >= Mnt
	X =< Mxt ,
	X >= Mnt ,
	maxmin(Xs, Mxt, Mx, Mnt, Mn).

% maxmin([3,9,2,6],Mx, Mn)