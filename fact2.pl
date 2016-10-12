%permission to retractt
:- dynamic board/1.
:- retractall(lisst(_)).
:- assert(lisst([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])). 
%the list 

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

%convert from two dimentions to one dimention
dim(1,1,1).
dim(1,2,2).
dim(1,3,3).
dim(2,2,4).
dim(2,4,5).
dim(2,6,6).
dim(3,3,7).
dim(3,4,8).
dim(3,5,9).
dim(4,1,10).
dim(4,2,11).
dim(4,3,12).
dim(4,5,13).
dim(4,6,14).
dim(4,7,15).
dim(5,3,16).
dim(5,4,17).
dim(5,5,18).
dim(6,2,19).
dim(6,4,20).
dim(6,6,21).
dim(7,1,22).
dim(7,4,23).
dim(7,7,24).
:- dynamic board/1.
:- retractall(board(_)).
:- assert(board([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])). 

%Check if the player has new score or not
score(Board,T):- Board = [T,T,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
score(Board,T):- Board = [T,_,_,_,_,_,_,_,_,T,_,_,_,_,_,_,_,_,_,_,_,T,_,_].
score(Board,T):- Board = [T,T,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
score(Board,T):- Board = [_,T,_,_,T,_,_,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
score(Board,T):- Board = [T,T,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
score(Board,T):- Board = [_,_,T,_,_,_,_,_,_,_,_,_,_,_,T,_,_,_,_,_,_,_,_,T].
score(Board,T):- Board = [_,_,_,T,T,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
score(Board,T):- Board = [_,_,_,T,_,_,_,_,_,_,T,_,_,_,_,_,_,_,T,_,_,_,_,_].
score(Board,T):- Board = [_,_,_,T,T,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
score(Board,T):- Board = [_,T,_,_,T,_,_,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
score(Board,T):- Board = [_,_,_,T,T,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
score(Board,T):- Board = [_,_,_,_,_,T,_,_,_,_,_,_,_,T,_,_,_,_,_,_,T,_,_,_].
score(Board,T):- Board = [_,_,_,_,_,_,T,T,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
score(Board,T):- Board = [_,_,_,_,_,_,T,_,_,_,_,T,_,_,_,T,_,_,_,_,_,_,_,_].
score(Board,T):- Board = [_,_,_,_,_,_,T,T,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
score(Board,T):- Board = [_,T,_,_,T,_,_,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
score(Board,T):- Board = [_,_,_,_,_,_,T,T,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
score(Board,T):- Board = [_,_,_,_,_,_,_,_,T,_,_,_,T,_,_,_,_,T,_,_,_,_,_,_].
score(Board,T):- Board = [_,_,_,_,_,_,_,_,_,T,T,T,_,_,_,_,_,_,_,_,_,_,_,_].
score(Board,T):- Board = [T,_,_,_,_,_,_,_,_,T,_,_,_,_,_,_,_,_,_,_,_,T,_,_].
score(Board,T):- Board = [_,_,_,_,_,_,_,_,_,T,T,T,_,_,_,_,_,_,_,_,_,_,_,_].
score(Board,T):- Board = [_,_,_,T,_,_,_,_,_,_,T,_,_,_,_,_,_,_,T,_,_,_,_,_].
score(Board,T):- Board = [_,_,_,_,_,_,_,_,_,T,T,T,_,_,_,_,_,_,_,_,_,_,_,_].
score(Board,T):- Board = [_,_,_,_,_,_,T,_,_,_,_,T,_,_,_,T,_,_,_,_,_,_,_,_].
score(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,T,T,T,_,_,_,_,_,_,_,_,_].
score(Board,T):- Board = [_,_,_,_,_,_,_,_,T,_,_,_,T,_,_,_,_,T,_,_,_,_,_,_].
score(Board,T):- Board = [_,_,_,_,_,T,_,_,_,_,_,_,_,T,_,_,_,_,_,_,T,_,_,_].
score(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,T,T,T,_,_,_,_,_,_,_,_,_].
score(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,T,T,T,_,_,_,_,_,_,_,_,_].
score(Board,T):- Board = [_,_,T,_,_,_,_,_,_,_,_,_,_,_,T,_,_,_,_,_,_,_,_,T].
score(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,T,T,_,_,_,_,_,_].
score(Board,T):- Board = [_,_,_,_,_,_,T,_,_,_,_,T,_,_,_,T,_,_,_,_,_,_,_,_].
score(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,T,T,_,_,_,_,_,_].
score(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,_,_,T,_,_,T,_].
score(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,T,T,_,_,_,_,_,_].
score(Board,T):- Board = [_,_,_,_,_,_,_,_,T,_,_,_,T,_,_,_,_,T,_,_,_,_,_,_].
score(Board,T):- Board = [_,_,_,T,_,_,_,_,_,_,T,_,_,_,_,_,_,_,T,_,_,_,_,_].
score(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,T,T,_,_,_].
score(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,T,T,_,_,_].
score(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,_,_,T,_,_,T,_].
score(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,T,T,_,_,_].
score(Board,T):- Board = [_,_,_,_,_,T,_,_,_,_,_,_,_,T,_,_,_,_,_,_,T,_,_,_].
score(Board,T):- Board = [T,_,_,_,_,_,_,_,_,T,_,_,_,_,_,_,_,_,_,_,_,T,_,_].
score(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,T,T].
score(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,T,T].
score(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,_,_,T,_,_,T,_].
score(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,T,T].
score(Board,T):- Board = [_,_,T,_,_,_,_,_,_,_,_,_,_,_,T,_,_,_,_,_,_,_,_,T].


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
%check is the board is full
notfull([X]):- X==0.
notfull([X|_]):- X==0.
notfull([Y|L]):- Y\==0,notfull(L).

full([X]):- X\==0.
full([X|L]):- X\==0,full(L).

available_position([X|_],1):- X=:=0.
available_position([_|Y],N):-N1 is N-1,available_position(Y,N1).
check(Board,Z):-available_position(Board,Z).

rockit([_|L],[P|L],P,1).
rockit([X|L],[X|L1],P,N):-N1 is N-1,rockit(L,L1,P,N1).


%/*fusion to list */
fusion([X],[Y],[X]):- X > Y .
fusion([X],[Y],[Y]):- X =< Y .
fusion([X|L1],[Y|L2],[X|L3]):- X > Y ,fusion(L1,L2,L3).
fusion([X|L1],[Y|L2],[Y|L3]):- X =< Y ,fusion(L1,L2,L3).
%print element

print_element([X|_],1):-write(X).
print_element([_|Y],N):-N1 is N-1,print_element(Y,N1).

print_board(Board):- 
	print_element(Board,1),write('--------'),print_element(Board,2),write('--------'),print_element(Board,3) ,nl,
	write('|        |        |'),nl,
	write('|  '),print_element(Board,4),write('-----'),print_element(Board,5),write('-----'),print_element(Board,6),write('  |'),nl,
	write('|  |     |     |  |'),nl,
	write('|  |  '),print_element(Board,7),write(--),print_element(Board,8),write('--'),print_element(Board,9),write('  |  |'),nl,
	write('|  |  |     |  |  |'),nl,
	print_element(Board,10),write(--),print_element(Board,11),write('--'),print_element(Board,12),write('     '),
	print_element(Board,13),write(--),print_element(Board,14),write('--'),print_element(Board,15),nl,
	write('|  |  |     |  |  |'),nl,
	write('|  |  '),print_element(Board,16),write(--),print_element(Board,17),write('--'),print_element(Board,18),write('  |  |'),nl,
	write('|  |     |     |  |'),nl,
	write('|  '),print_element(Board,19),write('-----'),print_element(Board,20),write('-----'),print_element(Board,21),write('  |'),nl,
    write('|        |        |'),nl,
    print_element(Board,22),write('--------'),print_element(Board,23),write('--------'),print_element(Board,24) ,nl.

    
    
    
    play(Board):-(score(Board,5),write('delete one rock 9 :'),nl,read(Z),rockit(Board,B,0,Z),asserta(lisst(B)),print_board(B),play2(B));(read(Z),check(Board,Z),rockit(Board,B,9,Z),asserta(lisst(B)),print_board(B),
    notfull(B),play2(B)).

  
    play2(Board):-(score(Board,9),write('delete one rock 5 :'),nl,read(Z),rockit(Board,B,0,Z),asserta(lisst(B)),print_board(B),play(B));read(Z),check(Board,Z),rockit(Board,B,5,Z),asserta(lisst(B)),print_board(B),
    notfull(B),play(B).
    
    
