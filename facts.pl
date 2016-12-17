
% e empty position
% a first player
% b second player

%Change between players
another_player(a,b).
another_player(b,a).

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
dim(1,4,2).
dim(1,7,3).
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

%check if the two positions are neigbors or not.
neighbor(1,2).
neighbor(1,10).
neighbor(10,1).
neighbor(2,1).
neighbor(2,3).
neighbor(2,5).
neighbor(3,2).
neighbor(3,15).
neighbor(15,3).
neighbor(4,5).
neighbor(4,11).
neighbor(11,4).
neighbor(5,2).
neighbor(5,4).
neighbor(5,6).
neighbor(5,8).
neighbor(6,5).
neighbor(6,14).
neighbor(14,6).
neighbor(7,8).
neighbor(7,12).
neighbor(12,7).
neighbor(8,5).
neighbor(8,7).
neighbor(8,9).
neighbor(9,8).
neighbor(10,11).
neighbor(11,10).
neighbor(11,12).
neighbor(12,11).
neighbor(13,14).
neighbor(14,13).
neighbor(14,15).
neighbor(15,14).
neighbor(12,16).
neighbor(16,12).
neighbor(13,9).
neighbor(9,13).
neighbor(13,18).
neighbor(18,13).
neighbor(16,17).
neighbor(17,16).
neighbor(17,18).
neighbor(18,17).
neighbor(19,20).
neighbor(20,19).
neighbor(20,21).
neighbor(21,20).
neighbor(10,22).
neighbor(22,10).
neighbor(20,23).
neighbor(23,20).
neighbor(23,24).
neighbor(24,23).
neighbor(14,21).
neighbor(21,14).
neighbor(19,11).
neighbor(11,19).
neighbor(20,17).
neighbor(17,20).
neighbor(24,15).
neighbor(15,24).
neighbor(23,22).
neighbor(22,23).

%Rows in the board
row(1,2,3).
row(4,5,6).
row(7,8,9).
row(10,11,12).
row(13,14,15).
row(16,17,18).
row(19,20,21).
row(22,23,24).

%Columns in the board
column(1,10,22).
column(2,5,8).
column(3,15,24).
column(4,11,19).
column(6,14,21).
column(7,12,16).
column(9,13,18).
column(17,20,23).

%all the posibilities for two choices
two_choices(1,2,3,15,24).
two_choices(2,3,1,10,22).
two_choices(3,15,24,22,23).
two_choices(1,10,22,23,24).
two_choices(3,24,15,13,14).
two_choices(1,3,2,5,8).
two_choices(1,22,10,11,12).
two_choices(22,24,23,17,20).
two_choices(4,5,6,14,21).
two_choices(5,6,4,11,19).
two_choices(6,14,21,19,20).
two_choices(4,11,19,20,21).
two_choices(4,19,11,10,12).
two_choices(6,21,14,13,15).
two_choices(4,6,5,2,8).
two_choices(19,21,20,17,23).
two_choices(2,5,8,7,9).
two_choices(10,11,12,7,16).
two_choices(23,20,17,16,18).
two_choices(15,14,13,9,18).
two_choices(8,9,7,12,16).
two_choices(7,8,9,13,18).
two_choices(7,12,16,17,18).
two_choices(16,17,18,9,13).



%Check if the player has new triple or not and check if there are triple so the player cannot delete antone of them.
triple(Board,X,T):- X=:=1, Board = [T,T,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
triple(Board,X,T):- X=:=1, Board = [T,_,_,_,_,_,_,_,_,T,_,_,_,_,_,_,_,_,_,_,_,T,_,_].
triple(Board,X,T):- X=:=2, Board = [T,T,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
triple(Board,X,T):- X=:=2, Board = [_,T,_,_,T,_,_,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
triple(Board,X,T):- X=:=3, Board = [T,T,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
triple(Board,X,T):- X=:=3, Board = [_,_,T,_,_,_,_,_,_,_,_,_,_,_,T,_,_,_,_,_,_,_,_,T].
triple(Board,X,T):- X=:=4, Board = [_,_,_,T,T,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
triple(Board,X,T):- X=:=4, Board = [_,_,_,T,_,_,_,_,_,_,T,_,_,_,_,_,_,_,T,_,_,_,_,_].
triple(Board,X,T):- X=:=5, Board = [_,_,_,T,T,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
triple(Board,X,T):- X=:=5, Board = [_,T,_,_,T,_,_,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
triple(Board,X,T):- X=:=6, Board = [_,_,_,T,T,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
triple(Board,X,T):- X=:=6, Board = [_,_,_,_,_,T,_,_,_,_,_,_,_,T,_,_,_,_,_,_,T,_,_,_].
triple(Board,X,T):- X=:=7, Board = [_,_,_,_,_,_,T,T,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
triple(Board,X,T):- X=:=7, Board = [_,_,_,_,_,_,T,_,_,_,_,T,_,_,_,T,_,_,_,_,_,_,_,_].
triple(Board,X,T):- X=:=8, Board = [_,_,_,_,_,_,T,T,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
triple(Board,X,T):- X=:=8, Board = [_,T,_,_,T,_,_,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
triple(Board,X,T):- X=:=9, Board = [_,_,_,_,_,_,T,T,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
triple(Board,X,T):- X=:=9, Board = [_,_,_,_,_,_,_,_,T,_,_,_,T,_,_,_,_,T,_,_,_,_,_,_].
triple(Board,X,T):- X=:=10, Board = [_,_,_,_,_,_,_,_,_,T,T,T,_,_,_,_,_,_,_,_,_,_,_,_].
triple(Board,X,T):- X=:=10, Board = [T,_,_,_,_,_,_,_,_,T,_,_,_,_,_,_,_,_,_,_,_,T,_,_].
triple(Board,X,T):- X=:=11, Board = [_,_,_,_,_,_,_,_,_,T,T,T,_,_,_,_,_,_,_,_,_,_,_,_].
triple(Board,X,T):- X=:=11, Board = [_,_,_,T,_,_,_,_,_,_,T,_,_,_,_,_,_,_,T,_,_,_,_,_].
triple(Board,X,T):- X=:=12, Board = [_,_,_,_,_,_,_,_,_,T,T,T,_,_,_,_,_,_,_,_,_,_,_,_].
triple(Board,X,T):- X=:=12, Board = [_,_,_,_,_,_,T,_,_,_,_,T,_,_,_,T,_,_,_,_,_,_,_,_].
triple(Board,X,T):- X=:=13, Board = [_,_,_,_,_,_,_,_,_,_,_,_,T,T,T,_,_,_,_,_,_,_,_,_].
triple(Board,X,T):- X=:=13, Board = [_,_,_,_,_,_,_,_,T,_,_,_,T,_,_,_,_,T,_,_,_,_,_,_].
triple(Board,X,T):- X=:=14, Board = [_,_,_,_,_,T,_,_,_,_,_,_,_,T,_,_,_,_,_,_,T,_,_,_].
triple(Board,X,T):- X=:=14, Board = [_,_,_,_,_,_,_,_,_,_,_,_,T,T,T,_,_,_,_,_,_,_,_,_].
triple(Board,X,T):- X=:=15, Board = [_,_,_,_,_,_,_,_,_,_,_,_,T,T,T,_,_,_,_,_,_,_,_,_].
triple(Board,X,T):- X=:=15, Board = [_,_,T,_,_,_,_,_,_,_,_,_,_,_,T,_,_,_,_,_,_,_,_,T].
triple(Board,X,T):- X=:=16, Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,T,T,_,_,_,_,_,_].
triple(Board,X,T):- X=:=16, Board = [_,_,_,_,_,_,T,_,_,_,_,T,_,_,_,T,_,_,_,_,_,_,_,_].
triple(Board,X,T):- X=:=17, Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,T,T,_,_,_,_,_,_].
triple(Board,X,T):- X=:=17, Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,_,_,T,_,_,T,_].
triple(Board,X,T):- X=:=18, Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,T,T,_,_,_,_,_,_].
triple(Board,X,T):- X=:=18, Board = [_,_,_,_,_,_,_,_,T,_,_,_,T,_,_,_,_,T,_,_,_,_,_,_].
triple(Board,X,T):- X=:=19, Board = [_,_,_,T,_,_,_,_,_,_,T,_,_,_,_,_,_,_,T,_,_,_,_,_].
triple(Board,X,T):- X=:=19, Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,T,T,_,_,_].
triple(Board,X,T):- X=:=20, Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,T,T,_,_,_].
triple(Board,X,T):- X=:=20, Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,_,_,T,_,_,T,_].
triple(Board,X,T):- X=:=21, Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,T,T,_,_,_].
triple(Board,X,T):- X=:=21, Board = [_,_,_,_,_,T,_,_,_,_,_,_,_,T,_,_,_,_,_,_,T,_,_,_].
triple(Board,X,T):- X=:=22, Board = [T,_,_,_,_,_,_,_,_,T,_,_,_,_,_,_,_,_,_,_,_,T,_,_].
triple(Board,X,T):- X=:=22, Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,T,T].
triple(Board,X,T):- X=:=23, Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,T,T].
triple(Board,X,T):- X=:=23, Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,_,_,T,_,_,T,_].
triple(Board,X,T):- X=:=24, Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,T,T].
triple(Board,X,T):- X=:=24, Board = [_,_,T,_,_,_,_,_,_,_,_,_,_,_,T,_,_,_,_,_,_,_,_,T].

%check if the player can make a move ot not
can_move(Board,T,X):- X<25, neighbor(X,Y), position_has_Tpiece(Board,X,T),available_position(Board,Y).
can_move(Board,T,X):- X<25, X1 is X+1, can_move(Board,T,X1).

%check if there any piece to delete it or not.
can_delete(Board,T,X):- X<25, position_has_Tpiece(Board,X,T), \+ triple(Board,X,T).
can_delete(Board,T,X):- X<25, X1 is X+1, can_delete(Board,T,X1).


%Print the Board
/*
  1  2  3  4  5  6  7
1 O--------O--------O
  |        |        |
2 |  O-----O-----O  |
  |  |     |     |  |
3 |  |  O--O--O  |  |
  |  |  |     |  |  |
4 O--O--O     O--O--O
  |  |  |     |  |  |
5 |  |  O--O--O  |  |
  |  |     |     |  |
6 |  O-----O-----O  |
  |        |        |
7 O--------O--------O
*/
print_element([X|_],1):-write(X).
print_element([_|Y],N):-N1 is N-1,print_element(Y,N1).
print_board(Board):- 
	write('  1      2    3    4    5    6      7                                               p'),nl,
	write('1 '),print_element(Board,1),write('----------------'),print_element(Board,2),write('----------------'),print_element(Board,3),nl, 
	write('  |                |                |'),nl,
	write('  |                |                |'),nl,
	write('2 |      '),print_element(Board,4),write('---------'),print_element(Board,5),write('---------'),print_element(Board,6),write('      |'),nl,
	write('  |      |         |         |      |'),nl,
	write('  |      |         |         |      |'),nl,
	write('3 |      |    '),print_element(Board,7),write('----'),print_element(Board,8),write('----'),print_element(Board,9),write('    |      |'),nl,
	write('  |      |    |         |    |      |'),nl,
	write('  |      |    |         |    |      |'),nl,
	write('4 '),print_element(Board,10),write('------'),print_element(Board,11),write('----'),print_element(Board,12),write('         '),
		print_element(Board,13),write('----'),print_element(Board,14),write('------'),print_element(Board,15),nl,
	write('  |      |    |         |    |      |'),nl,
	write('  |      |    |         |    |      |'),nl,
	write('5 |      |    '),print_element(Board,16),write('----'),print_element(Board,17),write('----'),print_element(Board,18),write('    |      |'),nl,
	write('  |      |         |         |      |'),nl,
	write('  |      |         |         |      |'),nl,
	write('6 |      '),print_element(Board,19),write('---------'),print_element(Board,20),write('---------'),print_element(Board,21),write('      |'),nl,
	write('  |                |                |'),nl,
	write('  |                |                |'),nl,
	write('7 '),print_element(Board,22),write('----------------'),print_element(Board,23),write('----------------'),print_element(Board,24),nl.

%print_board(['e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e']).

%check if the position in empty or not
available_position(['e'|_],1).
available_position([_|Y],N):- N>0 ,N1 is N-1,available_position(Y,N1).

%check if the position has T piece or not
position_has_Tpiece([T|_],1,T).
position_has_Tpiece([_|Y],N,T):- N>0 ,N1 is N-1,position_has_Tpiece(Y,N1,T).

%Get the value R in the index Idx
get_value([X|_],1,X).
get_value([_|T],Idx,R):-Idx1 is Idx-1,get_value(T,Idx1,R).

%Get 4 values R1,R2,R3,R4 in the indexs Idx1,Idx2,Idx3,Idx4 in the same time
get_values([],_,_,_,_,_,_,_,_):-!.
get_values([AX|T],1,Idx2,Idx3,Idx4,AX,R2,R3,R4):-Idx22 is Idx2-1,Idx33 is Idx3-1,Idx44 is Idx4-1,get_values(T,0,Idx22,Idx33,Idx44,_,R2,R3,R4),!.
get_values([AX|T],Idx1,1,Idx3,Idx4,R1,AX,R3,R4):-Idx11 is Idx1-1,Idx33 is Idx3-1,Idx44 is Idx4-1,get_values(T,Idx11,0,Idx33,Idx44,R1,_,R3,R4),!.
get_values([AX|T],Idx1,Idx2,1,Idx4,R1,R2,AX,R4):-Idx11 is Idx1-1,Idx22 is Idx2-1,Idx44 is Idx4-1,get_values(T,Idx11,Idx22,0,Idx44,R1,R2,_,R4),!.
get_values([AX|T],Idx1,Idx2,Idx3,1,R1,R2,R3,AX):-Idx11 is Idx1-1,Idx22 is Idx2-1,Idx33 is Idx3-1,get_values(T,Idx11,Idx22,Idx33,0,R1,R2,R3,_),!.
get_values([AX|T],Idx1,Idx2,Idx3,Idx4,R1,R2,R3,R4):-Idx11 is Idx1-1,Idx22 is Idx2-1,Idx33 is Idx3-1,Idx44 is Idx4-1,get_values(T,Idx11,Idx22,Idx33,Idx44,R1,R2,R3,R4).

%Get 3 values R1,R2,R3 in the indexs Idx1,Idx2,Idx3 in the same time
get_values([],_,_,_,_,_,_):-!.
get_values([AX|T],1,Idx2,Idx3,AX,R2,R3):-Idx22 is Idx2-1,Idx33 is Idx3-1,get_values(T,0,Idx22,Idx33,_,R2,R3),!.
get_values([AX|T],Idx1,1,Idx3,R1,AX,R3):-Idx11 is Idx1-1,Idx33 is Idx3-1,get_values(T,Idx11,0,Idx33,R1,_,R3),!.
get_values([AX|T],Idx1,Idx2,1,R1,R2,AX):-Idx11 is Idx1-1,Idx22 is Idx2-1,get_values(T,Idx11,Idx22,0,R1,R2,_),!.
get_values([AX|T],Idx1,Idx2,Idx3,R1,R2,R3):-Idx11 is Idx1-1,Idx22 is Idx2-1,Idx33 is Idx3-1,get_values(T,Idx11,Idx22,Idx33,R1,R2,R3).

%check if the move (add piece) is correct or not
check_add_piece(Board,X,Y):-position(X,Y),dim(X,Y,Z),available_position(Board,Z).

%add piece to the Board
add_piece([_|L],[P|L],P,1).
add_piece([X|L],[X|L1],P,N):-N1 is N-1,add_piece(L,L1,P,N1).

%remove piece from the Board
remove_piece([_|L],['e'|L],1).
remove_piece([X|L],[X|L1],N):-N1 is N-1,remove_piece(L,L1,N1).

%check if the move (delete piece) is correct or not
check_delete_piece(Board,X,Y,T):- position(X,Y),dim(X,Y,Z),position_has_Tpiece(Board,Z,T),\+ triple(Board,Z,T).

%check if the move (move piece) is correct or not
check_move_piece(Board,X,Y,T):- position(X,Y),dim(X,Y,Z),position_has_Tpiece(Board,Z,T).

%delete one piece from the against player when the player have new triple
delete_piece(Board,T,Board):- another_player(T,T1),\+ can_delete(Board,T1,1),write('you have new triple but you cannot delete any piece.'),nl.
delete_piece(Board,T,NewBoard):- write('You have new triple so you can choose one piece from the other pieces to delete it'),nl,
	write('Enter the number of row: '),nl,read(X),
	write('Enter the number of column: '),nl,read(Y),
	another_player(T,T1),check_delete_piece(Board,X,Y,T1),dim(X,Y,Z),remove_piece(Board,NewBoard,Z).
delete_piece(Board,T,NewBoard):- write('Incorrect, this move is not available'),nl,delete_piece(Board,T,NewBoard).

%check if the player has triple
check_triple(Board,X,T,NewBoard):- triple(Board,X,T),delete_piece(Board,T,NewBoard).
check_triple(L,_,_,L).

%Count the pieces for every player
count_piece([],R,Q,R,Q).
count_piece([a|Y],R,Q,RACC,QACC):- RACC1 is RACC+1,count_piece(Y,R,Q,RACC1,QACC).
count_piece([b|Y],R,Q,RACC,QACC):- QACC1 is QACC+1,count_piece(Y,R,Q,RACC,QACC1).
count_piece([e|Y],R,Q,RACC,QACC):- count_piece(Y,R,Q,RACC,QACC).

%this function to generate all posibilities of the triple in the same row or column
rows_columns(X,Y,Z):-row(X,Y,Z).
rows_columns(X,Y,Z):-column(X,Y,Z).

%select two positions in the same row or column
select_positions(X,Y):-neighbor(X,Y).
select_positions(X,Y):-row(X,_,Y).
select_positions(X,Y):-column(X,_,Y).

%Compter think for the game
%add piece
%H1: make two choices for example if you have two pieces (1,4) & (4,1) play the piece in position (1,1).
%H2: if there are two pieces in the same row or in the same column play the third one for example of you have (1,1) & (1,4) play (1,7).
%H4: Alpha_Beta tree to try all the posibilities until a specific level
%H6: prevent the other player to have two choices.
%H5: prevent the other player to have triple.
%priority order: h2,h5,h1,h6,h4
%delete piece
%H3: If I have two pieces in the same row or the smae column and one piece in the third place for the another player I will delete it
%H7 delete the main piece if the player have two choices.
%H8 delete one of two pieces in the same row or column to prevent the another player to get triple.
%H9 If I have two choices but there is a piece for the another player in the center
%H10 delete a piece with a big number of connections
%priority order: h8,h7,h3,h9
%move piece
%H11 if the player can have a triple in one move
%H12 prevent the other player to have triple by move one piece
%H13 alpha_beta tree for the move part
%H14 make triple free without (1- the another player have chance for triple, 2- the another player cannot prevent it)
%************************************************************************************

%print the delete in the computer turn
computer_print_delet(Z):- dim(A,B,Z),write("The computer delete the piece("),write(A),write(","),write(B),write(")."),nl.

%print the add in the computer turn
computer_print_add(Z):- dim(A,B,Z),write("The computer add the piece("),write(A),write(","),write(B),write(")."),nl.

%print the move in the computer turn
computer_print_move(Z1,Z):- dim(A1,B1,Z1),dim(A,B,Z),write("The computer move the piece from("),write(A1),write(","),write(B1),write(") to ("),write(A),write(","),write(B),write(")"),nl.

h7(Board,NewBoard,T):- two_choices(A,B,C,D,E),
				position_has_Tpiece(Board,C,T),
				get_values(Board,A,B,D,E,RA,RB,RD,RE),
				check_h1(RA,RB,RD,RE,T),
				remove_piece(Board,NewBoard,C).

check_h8(_,Y,Z,e,T,T,Y,Z,T).
check_h8(X,_,Z,T,e,T,X,Z,T).
check_h8(X,Y,_,T,T,e,X,Y,T).

delete_one_from_two(Board,NewBoard,X,_,T):- \+ triple(Board,X,T),!,remove_piece(Board,NewBoard,X).
delete_one_from_two(Board,NewBoard,_,Y,T):- \+ triple(Board,Y,T),remove_piece(Board,NewBoard,Y).

h8(Board,NewBoard,T):- rows_columns(X,Y,Z),
			get_values(Board,X,Y,Z,RX,RY,RZ),
			check_h8(X,Y,Z,RX,RY,RZ,RR1,RR2,T),
			delete_one_from_two(Board,NewBoard,RR1,RR2,T).

h9(Board,NewBoard,T):- another_player(T,T1),
				two_choices(A,B,C,D,E),
				position_has_Tpiece(Board,C,T),
				get_values(Board,A,B,D,E,RA,RB,RD,RE),
				check_h1(RA,RB,RD,RE,T1),
				remove_piece(Board,NewBoard,C).

check_h3(X,_,_,T1,T,T,X,T,T1).
check_h3(_,Y,_,T,T1,T,Y,T,T1).
check_h3(_,_,Z,T,T,T1,Z,T,T1).

h3(Board,NewBoard,T):- rows_columns(X,Y,Z),
				get_values(Board,X,Y,Z,RX,RY,RZ),
				check_h3(X,Y,Z,RX,RY,RZ,RR,T,T),
				\+ triple(Board,RR,T),
				remove_piece(Board,NewBoard,RR).

%this herstic is not final should be changed to be more intelligent
h10(Board,NewBoard,T):- position_has_Tpiece(Board,5,T),remove_piece(Board,NewBoard,5).
h10(Board,NewBoard,T):- position_has_Tpiece(Board,11,T),remove_piece(Board,NewBoard,11).
h10(Board,NewBoard,T):- position_has_Tpiece(Board,14,T),remove_piece(Board,NewBoard,14).
h10(Board,NewBoard,T):- position_has_Tpiece(Board,20,T),remove_piece(Board,NewBoard,20).
h10(Board,NewBoard,T):- position_has_Tpiece(Board,2,T),remove_piece(Board,NewBoard,2).
h10(Board,NewBoard,T):- position_has_Tpiece(Board,8,T),remove_piece(Board,NewBoard,8).
h10(Board,NewBoard,T):- position_has_Tpiece(Board,10,T),remove_piece(Board,NewBoard,10).
h10(Board,NewBoard,T):- position_has_Tpiece(Board,12,T),remove_piece(Board,NewBoard,12).
h10(Board,NewBoard,T):- position_has_Tpiece(Board,13,T),remove_piece(Board,NewBoard,13).
h10(Board,NewBoard,T):- position_has_Tpiece(Board,15,T),remove_piece(Board,NewBoard,15).
h10(Board,NewBoard,T):- position_has_Tpiece(Board,17,T),remove_piece(Board,NewBoard,17).
h10(Board,NewBoard,T):- position_has_Tpiece(Board,23,T),remove_piece(Board,NewBoard,23).
h10(Board,NewBoard,T):- position_has_Tpiece(Board,1,T),remove_piece(Board,NewBoard,1).
h10(Board,NewBoard,T):- position_has_Tpiece(Board,3,T),remove_piece(Board,NewBoard,3).
h10(Board,NewBoard,T):- position_has_Tpiece(Board,4,T),remove_piece(Board,NewBoard,4).
h10(Board,NewBoard,T):- position_has_Tpiece(Board,6,T),remove_piece(Board,NewBoard,6).
h10(Board,NewBoard,T):- position_has_Tpiece(Board,7,T),remove_piece(Board,NewBoard,7).
h10(Board,NewBoard,T):- position_has_Tpiece(Board,9,T),remove_piece(Board,NewBoard,9).
h10(Board,NewBoard,T):- position_has_Tpiece(Board,16,T),remove_piece(Board,NewBoard,16).
h10(Board,NewBoard,T):- position_has_Tpiece(Board,18,T),remove_piece(Board,NewBoard,18).
h10(Board,NewBoard,T):- position_has_Tpiece(Board,19,T),remove_piece(Board,NewBoard,19).
h10(Board,NewBoard,T):- position_has_Tpiece(Board,21,T),remove_piece(Board,NewBoard,21).
h10(Board,NewBoard,T):- position_has_Tpiece(Board,22,T),remove_piece(Board,NewBoard,22).
h10(Board,NewBoard,T):- position_has_Tpiece(Board,24,T),remove_piece(Board,NewBoard,24).

h10(Board,T,25,R,R,RIdx,RIdx).
h10(Board,T,Idx,R,L,RIdx,LIdx):- position_has_Tpiece(Board,Idx,T),
					remove_piece(Board,NewBoard1,Idx), 	
					rules(Board,[],1,T,R1,50,50,50,RIdx,50),
					min(R1,L,R2,RIdx2,LIdx,Idx),
					Idx1 is Idx+1,
					h10(Board,T,Idx1,R,R2,RIdx,RIdx2).
h10(Board,T,Idx,R,L,RIdx,Lidx):- Idx1 is Idx+1,h10(Board,T,Idx1,R,L,RIdx,LIdx).

delete_rules(Board,NewBoard,T):- h8(Board,NewBoard,T).
delete_rules(Board,NewBoard,T):- h7(Board,NewBoard,T).
delete_rules(Board,NewBoard,T):- h3(Board,NewBoard,T).
delete_rules(Board,NewBoard,T):- h9(Board,NewBoard,T).
delete_rules(Board,NewBoard,T):- h10(Board,NewBoard,T).
%delete_rules(Board,NewBoard,T):- h10(Board,T,1,R,50,Idx,50),remove_piece(Board,NewBoard,Idx).


%apply priority to delete one piece
computer_delete_piece(Board,T,NewBoard):- another_player(T,T1),delete_rules(Board,NewBoard,T1).

%check if the computer has triple
computer_check_triple(Board,X,T,NewBoard):- triple(Board,X,T),computer_delete_piece(Board,T,NewBoard).
computer_check_triple(L,_,_,L).

check_h1(T,e,T,e,T).
check_h1(e,T,T,e,T).
check_h1(T,e,e,T,T).
check_h1(e,T,e,T,T).

h1(Board,NewBoard,T,C):- two_choices(A,B,C,D,E),
				available_position(Board,C),
				get_values(Board,A,B,D,E,RA,RB,RD,RE),
				check_h1(RA,RB,RD,RE,T),
				add_piece(Board,NewBoard,T,C).

check_h2(X,_,_,e,T,T,X,T).
check_h2(_,Y,_,T,e,T,Y,T).
check_h2(_,_,Z,T,T,e,Z,T).

h2(Board,NewBoard,T,RR):- rows_columns(X,Y,Z),
				get_values(Board,X,Y,Z,RX,RY,RZ),
				check_h2(X,Y,Z,RX,RY,RZ,RR,T),
				add_piece(Board,NewBoard1,T,RR),
				computer_delete_piece(NewBoard1,T,NewBoard).

h5(Board,NewBoard,T,RR):- another_player(T,T1),
				rows_columns(X,Y,Z),
				get_values(Board,X,Y,Z,RX,RY,RZ),
				check_h2(X,Y,Z,RX,RY,RZ,RR,T1),
				add_piece(Board,NewBoard,T,RR).

h6(Board,NewBoard,T,C):- another_player(T,T1),
				two_choices(A,B,C,D,E),
				available_position(Board,C),
				get_values(Board,A,B,D,E,RA,RB,RD,RE),
				check_h1(RA,RB,RD,RE,T1),
				add_piece(Board,NewBoard,T,C).

%check if Idx one of the four places
check_Idx(Idx,_,_,_,e,e,e,T,Idx,T,1).
check_Idx(Idx,_,_,_,e,e,T,e,Idx,T,1).
check_Idx(_,Idx,_,_,e,e,e,T,Idx,T,1).
check_Idx(_,Idx,_,_,e,e,T,e,Idx,T,1).
check_Idx(_,_,Idx,_,T,e,e,e,Idx,T,1).
check_Idx(_,_,Idx,_,e,T,e,e,Idx,T,1).
check_Idx(_,_,_,Idx,T,e,e,e,Idx,T,1).
check_Idx(_,_,_,Idx,e,T,e,e,Idx,T,1).
check_Idx(_,_,_,_,_,_,_,_,_,_,0).

%check if Idx one of triple
check_Idx_tripe_1(e,T,T,1).
check_Idx_tripe_1(T,e,T,1).
check_Idx_tripe_1(_,_,_,0).

%check if Idx has one empty neighbor and one with T piece
check_Idx_tripe(A,B,Idx,D,E,Idx,T,R):-check_Idx_tripe_1(A,B,T,R1),
					check_Idx_tripe_1(D,E,T,R2),
					R is R1+R2.
check_Idx_tripe(_,_,_,_,_,_,_,0).

%count the posibilities to make two choices with Idx and center C
search_two_choices(_,_,0,_,25).
search_two_choices(Board,T,N,Idx,C):- available_position(Board,C),
					two_choices(A,B,C,D,E),
					get_values(Board,A,B,D,E,RA,RB,RD,RE),
					check_Idx(A,B,D,E,RA,RB,RD,RE,Idx,T,R1),
					another_player(T,T1),
					check_Idx(A,B,D,E,RA,RB,RD,RE,Idx,T1,R2),
					C1 is C+1,
					search_two_choices(Board,T,N1,Idx,C1),
					check_Idx_tripe(RA,RB,C,RD,RE,Idx,T,R3),
					check_Idx_tripe(RA,RB,C,RD,RE,Idx,T1,R4),
					N is N1+R1*4+R2+R3*3+R4*2.
search_two_choices(Board,T,N,Idx,C):-C1 is C+1,search_two_choices(Board,T,N,Idx,C1).

%weight_Board(_,[],[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24],_,_).
weight_Board(_,[],[],_,25).
weight_Board(Board,[N|Y],[I|IB],T,Idx):- available_position(Board,Idx),
					search_two_choices(Board,T,N1,Idx,1),
					N is  N1,
					I is Idx,
					Idx1 is Idx+1,
					weight_Board(Board,Y,IB,T,Idx1).
weight_Board(Board,NewBoard,IBoard,T,Idx):-Idx1 is Idx+1,weight_Board(Board,NewBoard,IBoard,T,Idx1).

quicksort([X|Xs],Ys,[IX|IXs],IYs) :- partition(Xs,X,Left,Right,IXs,IX,ILeft,IRight),
					quicksort(Left,Ls,ILeft,ILs),
					quicksort(Right,Rs,IRight,IRs),
					append(Ls,[X|Rs],Ys),
					append(ILs,[IX|IRs],IYs).
quicksort([],[],[],[]).

partition([X|Xs],Y,[X|Ls],Rs,[IX|IXs],IY,[IX|ILs],IRs):-X > Y, 
							partition(Xs,Y,Ls,Rs,IXs,IY,ILs,IRs).
partition([X|Xs],Y,Ls,[X|Rs],[IX|IXs],IY,ILs,[IX|IRs]):-X =< Y, 
							partition(Xs,Y,Ls,Rs,IXs,IY,ILs,IRs).
partition([],Y,[],[],[],IY,[],[]).

append([],Ys,Ys).
append([X|Xs],Ys,[X|Zs]) :- append(Xs,Ys,Zs).

search_neighbors(_,[],[],[],_).
search_neighbors(Board,[Nh|Neighbors],[Idx|EBtail],[Nh|TBtail],Idx):- available_position(Board,Nh),!,
										search_neighbors(Board,Neighbors,EBtail,TBtail,Idx).
search_neighbors(Board,[Nh|Neighbors],EBoard,TBoard,Idx):- search_neighbors(Board,Neighbors,EBoard,TBoard,Idx).

move_weight_Board(_,[],[],_,25).
move_weight_Board(Board,[EB|EBtail],[TB|TBtail],T,Idx):-position_has_Tpiece(Board,Idx,T),
						findall(Z,neighbor(Idx,Z),Neighbors),
						search_neighbors(Board,Neighbors,EB,TB,Idx),
						Idx1 is Idx+1,
						move_weight_Board(Board,EBtail,TBtail,T,Idx1).
move_weight_Board(Board,EBoard,TBoard,T,Idx):-Idx1 is Idx+1,
						move_weight_Board(Board,EBoard,TBoard,T,Idx1).

%Compute heuristics
compute_H(Board,R):- count_piece(Board,E,Q,0,0), R is Q - E.

max(R1,R2,R1,NIdx,_,NIdx):-R1>R2.
max(_,R2,R2,OIdx,OIdx,_).

min(R1,R2,R1,NIdx,_,NIdx):-R1<R2.
min(_,R2,R2,OIdx,OIdx,_).

min_max(Level,R1,R2,R,RIdx,OIdx,NIdx):- 0 is mod(Level,2),max(R1,R2,R,RIdx,OIdx,NIdx),!.
min_max(_,R1,R2,R,RIdx,OIdx,NIdx):- min(R1,R2,R,RIdx,OIdx,NIdx).

defult_value(Level,50):- 0 is mod(Level,2).
defult_value(_,-50).

pruning(Board,SortIBoard,Level,T,R,Beta,-50,Son,RIdx,TIdx):- alpha_beta(Board,SortIBoard,Level,T,R,Beta,-50,Son,RIdx,TIdx).
pruning(Board,SortIBoard,Level,T,R,Beta,50,Son,RIdx,TIdx):- alpha_beta(Board,SortIBoard,Level,T,R,Beta,50,Son,RIdx,TIdx).
pruning(Board,SortIBoard,Level,T,R,Beta,Father,Son,RIdx,TIdx):- 0 is mod(Level,2),Father<Beta,alpha_beta(Board,SortIBoard,Level,T,R,Beta,Father,Son,RIdx,TIdx).
pruning(Board,SortIBoard,Level,T,R,Beta,Father,Son,RIdx,TIdx):- 1 is mod(Level,2),Father>Beta,alpha_beta(Board,SortIBoard,Level,T,R,Beta,Father,Son,RIdx,TIdx).
pruning(_,_,_,_,Beta,Beta,_,_,_,_).

alpha_beta(_,[],_,_,R,R,_,_,RIdx,RIdx).
alpha_beta(Board,_,4,_,R,_,_,_,RIdx,RIdx):- compute_H(Board,R).
alpha_beta(Board,[Idxs|TailSortIBoard],Level,T,R,Beta,Father,Son,RIdx,TIdx):- Nextlevel is Level + 1,
					another_player(T,T1),
					defult_value(Nextlevel,Beta1),
					add_piece(Board,NewBoard1,T,Idxs),
					rules(NewBoard1,Nextlevel,T1,Alpha1,Beta1,Son,Beta1,RIdx1,Idxs),
					min_max(Nextlevel,Alpha1,Beta,Beta2,RIdx2,TIdx,Idxs),
					pruning(Board,TailSortIBoard,Level,T,R,Beta2,Father,Beta2,RIdx,RIdx2).

h4(Board,NewBoard,T):- rules(Board,1,T,R,-50,50,50,RIdx,-50),
				add_piece(Board,NewBoard1,T,RIdx), 
				computer_check_triple(NewBoard1,RIdx,T,NewBoard),
				write('*** '),write(R),nl,write(RIdx),nl,computer_print_add(RIdx).				

rules(Board,Level,T,R,Beta,_,Son,RIdx,_):- Level<4,
						h2(Board,NewBoard1,T,RIdx),
						Nextlevel is Level + 1,
						another_player(T,T1),
						defult_value(Nextlevel,Beta1),
						rules(NewBoard1,Nextlevel,T1,R,Beta1,Son,Beta1,RIdx1,RIdx).
rules(Board,Level,T,R,Beta,_,Son,RIdx,_):- Level<4,
						h5(Board,NewBoard1,T,RIdx),
						Nextlevel is Level + 1,
						another_player(T,T1),
						defult_value(Nextlevel,Beta1),
						rules(NewBoard1,Nextlevel,T1,R,Beta1,Son,Beta1,RIdx1,RIdx).
rules(Board,Level,T,R,Beta,_,Son,RIdx,_):- Level<4,
						h1(Board,NewBoard1,T,RIdx),
						Nextlevel is Level + 1,
						another_player(T,T1),
						defult_value(Nextlevel,Beta1),
						rules(NewBoard1,Nextlevel,T1,R,Beta1,Son,Beta1,RIdx1,RIdx).
rules(Board,Level,T,R,Beta,_,Son,RIdx,_):- Level<4,
						h6(Board,NewBoard1,T,RIdx),
						Nextlevel is Level + 1,
						another_player(T,T1), 
						defult_value(Nextlevel,Beta1),
						rules(NewBoard1,Nextlevel,T1,R,Beta1,Son,Beta1,RIdx1,RIdx).
rules(Board,Level,T,R,Beta,Father,Son,RIdx,TIdx):- weight_Board(Board,WeightBoard,IBoard,T,1),
									quicksort(WeightBoard,SortWeightBoard,IBoard,SortIBoard1),
									alpha_beta(Board,SortIBoard1,Level,T,R,Beta,Father,Son,RIdx,TIdx).

h11(Board,NewBoard,T,OP,NP):- rows_columns(X,Y,Z),
				get_values(Board,X,Y,Z,RX,RY,RZ),
				check_h2(X,Y,Z,RX,RY,RZ,NP,T),
				neighbor(NP,OP),
				Y\=OP,X\=OP,Z\=OP,
				position_has_Tpiece(Board,OP,T),
				add_piece(Board,NewBoard1,T,NP),
				remove_piece(NewBoard1,NewBoard2,OP),
				computer_delete_piece(NewBoard2,T,NewBoard).

h12(Board,NewBoard,T,OP,NP):- another_player(T,T1),
				rows_columns(X,Y,Z),
				get_values(Board,X,Y,Z,RX,RY,RZ),
				check_h2(X,Y,Z,RX,RY,RZ,NP,T1),
				neighbor(NP,OP),
				Y\=OP,X\=OP,Z\=OP,
				position_has_Tpiece(Board,OP,T),
				add_piece(Board,NewBoard1,T,NP),
				remove_piece(NewBoard1,NewBoard,OP).
find_another_neighbor(Board,A,B,C,D,T1):-neighbor(A,X),X\=B,X\=C,X\=D,!,position_has_Tpiece(Board,X,T1).
find_neighbor(Board,A,B,C,X,T1):- neighbor(A,X),X\=B,X\=C,available_position(Board,X),\+find_another_neighbor(Board,A,B,C,X,T1).
check_h14(Board,A,B,C,A,NP,T1):-find_neighbor(Board,A,B,C,NP,T1).
check_h14(Board,A,B,C,B,NP,T1):-find_neighbor(Board,B,A,C,NP,T1).
check_h14(Board,A,B,C,C,NP,T1):-find_neighbor(Board,C,B,A,NP,T1).
check_tripe(T,T,T,T).

h14(Board,NewBoard,T,OP,NP):-  another_player(T,T1),
				\+ h11(Board,NB,T1,OP1,NP1),
				rows_columns(X,Y,Z),
				get_values(Board,X,Y,Z,RX,RY,RZ),
				check_tripe(RX,RY,RZ,T),
				check_h14(Board,X,Y,Z,OP,NP,T1),
				add_piece(Board,NewBoard1,T,NP),
				remove_piece(NewBoard1,NewBoard,OP).

move_max(R1,R2,R1,NIdx,_,NIdx,BIdx,_,BIdx):-R1>R2.
move_max(_,R2,R2,OIdx,OIdx,_,BIdx,BIdx,_).

move_min(R1,R2,R1,NIdx,_,NIdx,BIdx,_,BIdx):-R1<R2.
move_min(_,R2,R2,OIdx,OIdx,_,BIdx,BIdx,_).

move_min_max(Level,R1,R2,R,RIdx,OIdx,NIdx,BIdx,OBIdx,NBIdx):- 0 is mod(Level,2),move_max(R1,R2,R,RIdx,OIdx,NIdx,BIdx,OBIdx,NBIdx),!.
move_min_max(_,R1,R2,R,RIdx,OIdx,NIdx,BIdx,OBIdx,NBIdx):- move_min(R1,R2,R,RIdx,OIdx,NIdx,BIdx,OBIdx,NBIdx).

move_alpha_beta(_,[],[],_,_,R,R,_,_,RIdx,RIdx,OIdx,OIdx).
move_alpha_beta(Board,_,_,4,_,R,_,_,_,RIdx,RIdx,OIdx,OIdx):- compute_H(Board,R)/*,write(R),write(' '),write(Board),nl*/.
move_alpha_beta(Board,[Idxs|TailSortIBoard],[OIdxs|OTailSortIBoard],Level,T,R,Beta,Father,Son,RIdx,TIdx,OIdx,TOIdx):- Nextlevel is Level + 1,
					another_player(T,T1),
					defult_value(Nextlevel,Beta1),
					add_piece(Board,NewBoard1,T,Idxs),
					remove_piece(NewBoard1,NewBoard2,OIdxs),
					move_rules(NewBoard2,Nextlevel,T1,Alpha1,Beta1,Son,Beta1,RIdx1,Idxs,OIdx1,OIdxs),
					move_min_max(Nextlevel,Alpha1,Beta,Beta2,RIdx2,TIdx,Idxs,OIdx2,TOIdx,OIdxs),
					move_pruning(Board,TailSortIBoard,OTailSortIBoard,Level,T,R,Beta2,Father,Beta2,RIdx,RIdx2,OIdx,OIdx2).

move_pruning(Board,SortIBoard,OSortIBoard,Level,T,R,Beta,-50,Son,RIdx,TIdx,OIdx,TOIdx):- 
					move_alpha_beta(Board,SortIBoard,OSortIBoard,Level,T,R,Beta,-50,Son,RIdx,TIdx,OIdx,TOIdx).
move_pruning(Board,SortIBoard,OSortIBoard,Level,T,R,Beta,50,Son,RIdx,TIdx,OIdx,TOIdx):- 
					move_alpha_beta(Board,SortIBoard,OSortIBoard,Level,T,R,Beta,50,Son,RIdx,TIdx,OIdx,TOIdx).
move_pruning(Board,SortIBoard,OSortIBoard,Level,T,R,Beta,Father,Son,RIdx,TIdx,OIdx,TOIdx):- 0 is mod(Level,2),
					Father<Beta,
					move_alpha_beta(Board,SortIBoard,OSortIBoard,Level,T,R,Beta,Father,Son,RIdx,TIdx,OIdx,TOIdx).
move_pruning(Board,SortIBoard,OSortIBoard,Level,T,R,Beta,Father,Son,RIdx,TIdx,OIdx,TOIdx):- 1 is mod(Level,2),
					Father>Beta,
					move_alpha_beta(Board,SortIBoard,OSortIBoard,Level,T,R,Beta,Father,Son,RIdx,TIdx,OIdx,TOIdx).
move_pruning(_,_,_,_,_,Beta,Beta,_,_,_,_,_,_).


move_rules(Board,Level,T,R,Beta,_,Son,RIdx,_,OIdx,_):- Level<4,
						h11(Board,NewBoard1,T,OIdx,RIdx),
						Nextlevel is Level + 1,
						another_player(T,T1),
						defult_value(Nextlevel,Beta1),
						move_rules(NewBoard1,Nextlevel,T1,R,Beta1,Son,Beta1,RIdx1,RIdx,OIdx1,OIdx).
move_rules(Board,Level,T,R,Beta,_,Son,RIdx,_,OIdx,_):- Level<4,
						h12(Board,NewBoard1,T,OIdx,RIdx),
						Nextlevel is Level + 1,
						another_player(T,T1),
						defult_value(Nextlevel,Beta1),
						move_rules(NewBoard1,Nextlevel,T1,R,Beta1,Son,Beta1,RIdx1,RIdx,OIdx1,OIdx).
move_rules(Board,Level,T,R,Beta,_,Son,RIdx,_,OIdx,_):- Level<4,
						h14(Board,NewBoard1,T,OIdx,RIdx),
						Nextlevel is Level + 1,
						another_player(T,T1),
						defult_value(Nextlevel,Beta1),
						move_rules(NewBoard1,Nextlevel,T1,R,Beta1,Son,Beta1,RIdx1,RIdx,OIdx1,OIdx).
move_rules(Board,Level,T,R,Beta,Father,Son,RIdx,TIdx,OIdx,TOIdx):- move_weight_Board(Board,EBoard,TBoard,T,1),
									flatten(EBoard,EBoard1),
									flatten(TBoard,TBoard1),
									move_alpha_beta(Board,TBoard1,EBoard1,Level,T,R,Beta,Father,Son,RIdx,TIdx,OIdx,TOIdx).

h13(Board,NewBoard,T):- move_rules(Board,1,T,R,-50,50,50,RIdx,-50,OIdx,-50),
				add_piece(Board,NewBoard1,T,RIdx), 
				remove_piece(NewBoard1,NewBoard2,OIdx),
				computer_check_triple(NewBoard2,RIdx,T,NewBoard),
				write('*** '),write(R),nl,write(RIdx),nl,computer_print_move(OIdx,RIdx).

%************************************************************************************

%playing the game
%the first part of the game (add pieces)
%************************************************************************************
%The player turn
play(Board,T,N):- 1 is (N mod 2),N<19,nl,print_board(Board),nl,
	write('***** Player '),write(T),write(' *****'),nl,
	write('Enter the number of row: '),nl,read(X),
	write('Enter the number of column: '),nl,read(Y),
	check_add_piece(Board,X,Y),dim(X,Y,Z),add_piece(Board,NewBoard,T,Z),
	check_triple(NewBoard,Z,T,NewBoard2),another_player(T,T1),N1 is N+1,play(NewBoard2,T1,N1).
play(Board,T,N):- 1 is (N mod 2),N<19,write('Incorrect, this position is not available'),nl,play(Board,T,N),!.
%************************************************************************************

%Compter think for the game
%add piece
%H1: make two choices for example if you have two pieces (1,4) & (4,1) play the piece in position (1,1).
%H2: if there are two pieces in the same row or in the same column play the third one for example of you have (1,1) & (1,4) play (1,7).
%H3: try to make two choices for example if you have (1,4) play (4,1) to apply H1 the next time.
%H4: Choose position with big number of connections.
%H5: prevent the other player to have triple.
%H6: prevent the other player to have two choices.
%priority order: h6,h2,h1,h5,h3,h4
%delete piece
%H7 delete the main piece if the player have two choices.
%H8 delete one of two pieces in the same row or column to prevent the another player to get triple.
%H9 delete on of two pieces will make two choices with add another piece
%H10 delete a piece with a big number of connections
%move piece
%H11 if the player can have a triple in one move
%H12 prevent the other player to have triple by move one piece
%************************************************************************************
%The Computer turn

play(Board,T,N):-  0 is (N mod 2),N<19, write('multi connextion'),nl,h4(Board,NewBoard,T), another_player(T,T1),N1 is N+1,play(NewBoard,T1,N1).
%************************************************************************************
%the second part of the game (move the pieces)
%************************************************************************************
%The player turn
play(Board,T,_):- count_piece(Board,E,Q,0,0),E < 3,another_player(T,T1),write('The game is finished. THE WINNER IS THE PLAYER: *** '),write(T1),write(' ***'),nl,
	write('Player a has '),write(E),write(' pieces.'),nl,write('Player b has '),write(Q),write(' pieces.'),nl.
play(Board,T,_):- count_piece(Board,E,Q,0,0),Q < 3,another_player(T,T1),write('The game is finished. THE WINNER IS THE PLAYER: *** '),write(T1),write(' ***'),nl,
	write('Player a has '),write(E),write(' pieces.'),nl,write('Player b has '),write(Q),write(' pieces.'),nl.
play(Board,T,N):- 1 is (N mod 2),\+ can_move(Board,T,1),another_player(T,T1),write('The game is finished. THE WINNER IS THE PLAYER: *** '),write(T1),write(' ***'),nl,
	count_piece(Board,R1,R2,0,0),write('Player a has '),write(R1),write(' pieces.'),nl,write('Player b has '),write(R2),write(' pieces.'),nl.
play(Board,T,N):- 1 is (N mod 2),nl,print_board(Board),nl,
	write('***** Player '),write(T),write(' *****'),nl,
	write('You should move one piece to the empty neighbor'),nl,
	write('Enter the number of row to the piece: '),nl,read(X1),
	write('Enter the number of column to the piece: '),nl,read(Y1),
	write('Enter the number of row to the position: '),nl,read(X2),
	write('Enter the number of column to the position: '),nl,read(Y2),
	check_add_piece(Board,X2,Y2),check_move_piece(Board,X1,Y1,T),dim(X2,Y2,Z2),dim(X1,Y1,Z1),neighbor(Z1,Z2),add_piece(Board,NewBoard,T,Z2),
	remove_piece(NewBoard,NewBoard2,Z1), check_triple(NewBoard2,Z2,T,NewBoard3),another_player(T,T1),N1 is N+1,play(NewBoard3,T1,N1).
play(Board,T,N):- 1 is (N mod 2),write('Incorrect, this move is not available'),nl,play(Board,T,N).
%************************************************************************************
%The computer turn

/*play(Board,T,N):- 0 is (N mod 2),write('add triple'),h11(Board,NewBoard,T),another_player(T,T1),N1 is N+1,play(NewBoard,T1,N1),!.
play(Board,T,N):- 0 is (N mod 2),write('prevent triple'),h12(Board,NewBoard,T),another_player(T,T1),N1 is N+1,play(NewBoard,T1,N1),!.*/
play(Board,T,N):- 0 is (N mod 2),write('remove triple'),h13(Board,NewBoard,T),another_player(T,T1),N1 is N+1,play(NewBoard,T1,N1),!.
/*play(Board,T,N):- 0 is (N mod 2),write('prevent the other to remove triple'),h14(Board,NewBoard,T),another_player(T,T1),N1 is N+1,play(NewBoard,T1,N1),!.*/


new_game:- play(['e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e'],'a',1).


%just for test and debug
pp:- weight_Board([a,e,e,e,e,e,e,e,e,e,e,e,e,e,e,e,e,e,e,e,e,e,e,e],NewBoard,IBoard,'a',1),sort_24_time(NewBoard,NB,IBoard,NIB,1),write(NB),nl,write(NIB),nl.
%kk:- search_1([a,e,e,e,e,e,e,e,e,a,e,e,e,e,e,e,e,e,e,e,e,e,e,e],1,2,15,24,'a'),write('true'),nl.
aa:- weight_Board(['a','e','e','b','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e'],NewBoard,IBoard,'b',1),
		write(NewBoard),nl,write(IBoard),nl,
		quicksort(NewBoard,RNB,IBoard,RIB),
		write(RNB),nl,write(RIB),nl,
		print_board(['a','e','e','b','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e']),nl.
bb:- get_values([a,e,e,e,e,e,e,e,e,e,e,e,e,e,e,e,e,e,e,e,e,e,e,e],3,15,22,23,RA,RB,RC,RD),write(RA),write(' '),write(RB),write(' '),write(RC),write(' '),write(RD),nl.
cc:- search_two_choices(['a','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e'],'a',N,24,1),write(N),nl.
dd:- h2(['a','a','e','b','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','a'],NewBoard,'a',R),write(NewBoard),nl,write(R),nl.
ff:- delete_rules(['e','e','b','b','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','b','a','a'],NewBoard,'a'),write(NewBoard),nl.
gg:- h12(['e','b','b','e','e','e','e','e','e','a','e','e','e','e','e','e','e','e','e','e','e','e','a','a'],NewBoard,'a',OP,NP),write(NewBoard),nl,write(OP),write(' '),write(NP),nl.
rr:- move_weight_Board(['a','e','e','e','b','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','b'],EBoard,TBoard,'b',1),
						flatten(EBoard,EBoard1),flatten(TBoard,TBoard1),write(EBoard1),nl,write(TBoard1),nl.
kk:- print_board(['a','e','e','e','b','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','b']),nl,h13(['a','e','e','e','b','e','e','e','e','e','e','e','b','e','e','e','e','e','b','e','e','e','e','b'],NewBoard,'b'),print_board(NewBoard),nl.

yy:- h14(['e','b','e','a','a','a','b','e','e','e','b','e','e','b','e','e','e','e','e','e','e','e','e','e'],NewBoard,'a',OP,NP),print_board(NewBoard),nl.
ww:- count_piece(['e','b','e','a','a','a','b','e','e','e','b','e','e','b','e','e','e','b','e','b','e','e','e','e'],R1,R2,0,0),write(R1),write(' '),write(R2),nl.
ll:- delete_rules(['b','b','a','e','b','e','a','b','e','e','a','e','e','e','e','e','e','e','e','e','e','e','e','a'],NewBoard,'b'),print_board(NewBoard),nl.



