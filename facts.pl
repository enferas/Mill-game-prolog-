% Positions
% the first row
position(1,1).
position(1,4).
position(1,7).

%the sesecond row
position(2,2).
position(2,4).
position(2,6).

%the third row
position(3,3).
position(3,4).
position(3,5).

%the fourth row
position(4,1).
position(4,2).
position(4,3).
position(4,5).
position(4,6).
position(4,7).

%the fifth row
position(5,3).
position(5,4).
position(5,5).

%the sixth row
position(6,2).
position(6,4).
position(6,6).

%the seventh row
position(7,1).
position(7,4).
position(7,7).

%Check if the player has new score or not
score(Board,X,Y,T):- X=:=1, Y=:=1, Board = [T,T,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
score(Board,X,Y,T):- X=:=1, Y=:=1, Board = [T,_,_,_,_,_,_,_,_,T,_,_,_,_,_,_,_,_,_,_,_,T,_,_].
score(Board,X,Y,T):- X=:=1, Y=:=4, Board = [T,T,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
score(Board,X,Y,T):- X=:=1, Y=:=4, Board = [_,T,_,_,T,_,_,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
score(Board,X,Y,T):- X=:=1, Y=:=7, Board = [T,T,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
score(Board,X,Y,T):- X=:=1, Y=:=7, Board = [_,_,T,_,_,_,_,_,_,_,_,_,_,_,T,_,_,_,_,_,_,_,_,T].
score(Board,X,Y,T):- X=:=2, Y=:=2, Board = [_,_,_,T,T,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
score(Board,X,Y,T):- X=:=2, Y=:=2, Board = [_,_,_,T,_,_,_,_,_,_,T,_,_,_,_,_,_,_,T,_,_,_,_,_].
score(Board,X,Y,T):- X=:=2, Y=:=4, Board = [_,_,_,T,T,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
score(Board,X,Y,T):- X=:=2, Y=:=4, Board = [_,T,_,_,T,_,_,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
score(Board,X,Y,T):- X=:=2, Y=:=6, Board = [_,_,_,T,T,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
score(Board,X,Y,T):- X=:=2, Y=:=6, Board = [_,_,_,_,_,T,_,_,_,_,_,_,_,T,_,_,_,_,_,_,T,_,_,_].
score(Board,X,Y,T):- X=:=3, Y=:=3, Board = [_,_,_,_,_,_,T,T,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
score(Board,X,Y,T):- X=:=3, Y=:=3, Board = [_,_,_,_,_,_,T,_,_,_,_,T,_,_,_,T,_,_,_,_,_,_,_,_].
score(Board,X,Y,T):- X=:=3, Y=:=4, Board = [_,_,_,_,_,_,T,T,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
score(Board,X,Y,T):- X=:=3, Y=:=4, Board = [_,T,_,_,T,_,_,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
score(Board,X,Y,T):- X=:=3, Y=:=5, Board = [_,_,_,_,_,_,T,T,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
score(Board,X,Y,T):- X=:=3, Y=:=5, Board = [_,_,_,_,_,_,_,_,T,_,_,_,T,_,_,_,_,T,_,_,_,_,_,_].
score(Board,X,Y,T):- X=:=4, Y=:=1, Board = [_,_,_,_,_,_,_,_,_,T,T,T,_,_,_,_,_,_,_,_,_,_,_,_].
score(Board,X,Y,T):- X=:=4, Y=:=1, Board = [T,_,_,_,_,_,_,_,_,T,_,_,_,_,_,_,_,_,_,_,_,T,_,_].
score(Board,X,Y,T):- X=:=4, Y=:=2, Board = [_,_,_,_,_,_,_,_,_,T,T,T,_,_,_,_,_,_,_,_,_,_,_,_].
score(Board,X,Y,T):- X=:=4, Y=:=2, Board = [_,_,_,T,_,_,_,_,_,_,T,_,_,_,_,_,_,_,T,_,_,_,_,_].
score(Board,X,Y,T):- X=:=4, Y=:=3, Board = [_,_,_,_,_,_,_,_,_,T,T,T,_,_,_,_,_,_,_,_,_,_,_,_].
score(Board,X,Y,T):- X=:=4, Y=:=3, Board = [_,_,_,_,_,_,T,_,_,_,_,T,_,_,_,T,_,_,_,_,_,_,_,_].
score(Board,X,Y,T):- X=:=4, Y=:=5, Board = [_,_,_,_,_,_,_,_,_,_,_,_,T,T,T,_,_,_,_,_,_,_,_,_].
score(Board,X,Y,T):- X=:=4, Y=:=5, Board = [_,_,_,_,_,_,_,_,T,_,_,_,T,_,_,_,_,T,_,_,_,_,_,_].
score(Board,X,Y,T):- X=:=4, Y=:=6, Board = [_,_,_,_,_,T,_,_,_,_,_,_,_,T,_,_,_,_,_,_,T,_,_,_].
score(Board,X,Y,T):- X=:=4, Y=:=6, Board = [_,_,_,_,_,_,_,_,_,_,_,_,T,T,T,_,_,_,_,_,_,_,_,_].
score(Board,X,Y,T):- X=:=4, Y=:=7, Board = [_,_,_,_,_,_,_,_,_,_,_,_,T,T,T,_,_,_,_,_,_,_,_,_].
score(Board,X,Y,T):- X=:=4, Y=:=7, Board = [_,_,T,_,_,_,_,_,_,_,_,_,_,_,T,_,_,_,_,_,_,_,_,T].
score(Board,X,Y,T):- X=:=5, Y=:=3, Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,T,T,_,_,_,_,_,_].
score(Board,X,Y,T):- X=:=5, Y=:=3, Board = [_,_,_,_,_,_,T,_,_,_,_,T,_,_,_,T,_,_,_,_,_,_,_,_].
score(Board,X,Y,T):- X=:=5, Y=:=4, Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,T,T,_,_,_,_,_,_].
score(Board,X,Y,T):- X=:=5, Y=:=4, Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,_,_,T,_,_,T,_].
score(Board,X,Y,T):- X=:=5, Y=:=5, Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,T,T,_,_,_,_,_,_].
score(Board,X,Y,T):- X=:=5, Y=:=5, Board = [_,_,_,_,_,_,_,_,T,_,_,_,T,_,_,_,_,T,_,_,_,_,_,_].
score(Board,X,Y,T):- X=:=6, Y=:=2, Board = [_,_,_,T,_,_,_,_,_,_,T,_,_,_,_,_,_,_,T,_,_,_,_,_].
score(Board,X,Y,T):- X=:=6, Y=:=2, Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,T,T,_,_,_].
score(Board,X,Y,T):- X=:=6, Y=:=4, Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,T,T,_,_,_].
score(Board,X,Y,T):- X=:=6, Y=:=4, Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,_,_,T,_,_,T,_].
score(Board,X,Y,T):- X=:=6, Y=:=6, Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,T,T,_,_,_].
score(Board,X,Y,T):- X=:=6, Y=:=6, Board = [_,_,_,_,_,T,_,_,_,_,_,_,_,T,_,_,_,_,_,_,T,_,_,_].
score(Board,X,Y,T):- X=:=7, Y=:=1, Board = [T,_,_,_,_,_,_,_,_,T,_,_,_,_,_,_,_,_,_,_,_,T,_,_].
score(Board,X,Y,T):- X=:=7, Y=:=1, Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,T,T].
score(Board,X,Y,T):- X=:=7, Y=:=4, Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,T,T].
score(Board,X,Y,T):- X=:=7, Y=:=4, Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,_,_,T,_,_,T,_].
score(Board,X,Y,T):- X=:=7, Y=:=7, Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,T,T].
score(Board,X,Y,T):- X=:=7, Y=:=7, Board = [_,_,T,_,_,_,_,_,_,_,_,_,_,_,T,_,_,_,_,_,_,_,_,T].

%check if the player can make a move ot not
can_move(Board,T):- Board = [T,e,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [e,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,T,e,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,e,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,T,e,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,e,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,T,e,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,e,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,T,e,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,e,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,T,e,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,e,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,T,e,_,_,_,_,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,e,T,_,_,_,_,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,T,e,_,_,_,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,e,T,_,_,_,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,T,e,_,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,e,T,_,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,T,e,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,e,T,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,e,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,e,T,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,e,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,e,T,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,e,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,e,T,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,e,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,e,T,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,e,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,e,T,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,e].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,e,T].
can_move(Board,T):- Board = [T,_,_,_,_,_,_,_,_,e,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [e,_,_,_,_,_,_,_,_,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,T,_,_,_,_,_,_,_,_,_,_,_,e,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,e,_,_,_,_,_,_,_,_,_,_,_,T,_,_].
can_move(Board,T):- Board = [_,_,_,T,_,_,_,_,_,_,e,_,_,_,_,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,e,_,_,_,_,_,_,T,_,_,_,_,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,T,_,_,_,_,_,_,_,e,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,e,_,_,_,_,_,_,_,T,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,T,_,_,_,_,e,_,_,_,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,e,_,_,_,_,T,_,_,_,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,T,_,_,_,e,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,e,_,_,_,T,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,T,_,_,e,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,e,_,_,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,T,_,_,e,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,e,_,_,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,_,_,e,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,e,_,_,T,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,_,_,e,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,e,_,_,T,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,T,_,_,_,e,_,_,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,e,_,_,_,T,_,_,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,T,_,_,_,_,e,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,e,_,_,_,_,T,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,T,_,_,_,_,_,_,_,e,_,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,e,_,_,_,_,_,_,_,T,_,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,T,_,_,_,_,_,_,e,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,e,_,_,_,_,_,_,T,_,_,_].
can_move(Board,T):- Board = [_,_,T,_,_,_,_,_,_,_,_,_,_,_,e,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,e,_,_,_,_,_,_,_,_,_,_,_,T,_,_,_,_,_,_,_,_,_].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,_,_,_,_,_,_,_,_,e].
can_move(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,e,_,_,_,_,_,_,_,_,T].

%Print the Board
/*
O--------O--------O
|        |        |
|  O-----O-----O  |
|  |     |     |  |
|  |  O--O--O  |  |
|  |  |     |  |  |
O--O--O     O--O--O
|  |  |     |  |  |
|  |  O--O--O  |  |
|  |     |     |  |
|  O-----O-----O  |
|        |        |
O--------O--------O
*/
print_element([X|Y],A,N):- A=:=N,write(X).
print_element([X|Y],A,N):- print_element(Y,A+1,N).
print_board(Board):- 
	print_element(Board,1,1),write('--------'),print_element(Board,1,2),write('--------'),print_element(Board,1,3),nl, 
	write('|        |        |'),nl,
	write('|  '),print_element(Board,1,4),write('-----'),print_element(Board,1,5),write('-----'),print_element(Board,1,6),write('  |'),nl,
	write('|  |     |     |  |'),nl,
	write('|  |  '),print_element(Board,1,7),write('--'),print_element(Board,1,8),write('--'),print_element(Board,1,9),write('  |  |'),nl,
	write('|  |  |     |  |  |'),nl,
	print_element(Board,1,10),write('--'),print_element(Board,1,11),write('--'),print_element(Board,1,12),write('     '),print_element(Board,1,13),write('--'),print_element(Board,1,14),write('--'),print_element(Board,1,15),nl,
	write('|  |  |     |  |  |'),nl,
	write('|  |  '),print_element(Board,1,16),write('--'),print_element(Board,1,17),write('--'),print_element(Board,1,18),write('  |  |'),nl,
	write('|  |     |     |  |'),nl,
	write('|  '),print_element(Board,1,19),write('-----'),print_element(Board,1,20),write('-----'),print_element(Board,1,21),write('  |'),nl,
	write('|        |        |'),nl,
	print_element(Board,1,22),write('--------'),print_element(Board,1,23),write('--------'),print_element(Board,1,24),nl.

%print_board(['O','O','O','O','O','O','O','O','O','O','O','O','O','O','O','O','O','O','O','O','O','O','O','O']).

