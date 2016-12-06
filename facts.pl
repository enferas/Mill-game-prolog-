
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

%check if there any piece to delete it or not.
can_delete(Board,T):- Board = [T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_],\+ triple(Board,1,T).
can_delete(Board,T):- Board = [_,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_],\+ triple(Board,2,T).
can_delete(Board,T):- Board = [_,_,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_],\+ triple(Board,3,T).
can_delete(Board,T):- Board = [_,_,_,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_],\+ triple(Board,4,T).
can_delete(Board,T):- Board = [_,_,_,_,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_],\+ triple(Board,5,T).
can_delete(Board,T):- Board = [_,_,_,_,_,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_],\+ triple(Board,6,T).
can_delete(Board,T):- Board = [_,_,_,_,_,_,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_],\+ triple(Board,7,T).
can_delete(Board,T):- Board = [_,_,_,_,_,_,_,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_],\+ triple(Board,8,T).
can_delete(Board,T):- Board = [_,_,_,_,_,_,_,_,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_],\+ triple(Board,9,T).
can_delete(Board,T):- Board = [_,_,_,_,_,_,_,_,_,T,_,_,_,_,_,_,_,_,_,_,_,_,_,_],\+ triple(Board,10,T).
can_delete(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,T,_,_,_,_,_,_,_,_,_,_,_,_,_],\+ triple(Board,11,T).
can_delete(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,T,_,_,_,_,_,_,_,_,_,_,_,_],\+ triple(Board,12,T).
can_delete(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,T,_,_,_,_,_,_,_,_,_,_,_],\+ triple(Board,13,T).
can_delete(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,T,_,_,_,_,_,_,_,_,_,_],\+ triple(Board,14,T).
can_delete(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,_,_,_,_,_,_,_,_,_],\+ triple(Board,15,T).
can_delete(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,_,_,_,_,_,_,_,_],\+ triple(Board,16,T).
can_delete(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,_,_,_,_,_,_,_],\+ triple(Board,17,T).
can_delete(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,_,_,_,_,_,_],\+ triple(Board,18,T).
can_delete(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,_,_,_,_,_],\+ triple(Board,19,T).
can_delete(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,_,_,_,_],\+ triple(Board,20,T).
can_delete(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,_,_,_],\+ triple(Board,21,T).
can_delete(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,_,_],\+ triple(Board,22,T).
can_delete(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T,_],\+ triple(Board,23,T).
can_delete(Board,T):- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,T],\+ triple(Board,24,T).


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
delete_piece(Board,T,Board):- another_player(T,T1),\+ can_delete(Board,T1),write('you have new triple but you cannot delete any piece.'),nl.
delete_piece(Board,T,NewBoard):- write('You have new triple so you can choose one piece from the other pieces to delete it'),nl,
	write('Enter the number of row: '),nl,read(X),
	write('Enter the number of column: '),nl,read(Y),
	another_player(T,T1),check_delete_piece(Board,X,Y,T1),dim(X,Y,Z),remove_piece(Board,NewBoard,Z).
delete_piece(Board,T,NewBoard):- write('Incorrect, this move is not available'),nl,delete_piece(Board,T,NewBoard).

%check if the player has triple
check_triple(Board,X,T,NewBoard):- triple(Board,X,T),delete_piece(Board,T,NewBoard).
check_triple(L,_,_,L).

%Count the pieces for every player
count_piece([],0,0).
count_piece([a|Y],R,Q):- count_piece(Y,W,Q),R is W + 1.
count_piece([b|Y],R,Q):- count_piece(Y,R,E),Q is E + 1.
count_piece([e|Y],R,Q):- count_piece(Y,R,Q).

%this function to generate all permutations to the triple in the same row or column
all_permutations(X,Y,Z):- row(X,Y,Z).
all_permutations(X,Y,Z):- row(X,Z,Y).
all_permutations(X,Y,Z):- row(Y,X,Z).
all_permutations(X,Y,Z):- row(Y,Z,X).
all_permutations(X,Y,Z):- row(Z,X,Y).
all_permutations(X,Y,Z):- row(Z,Y,X).
all_permutations(X,Y,Z):- column(X,Y,Z).
all_permutations(X,Y,Z):- column(X,Z,Y).
all_permutations(X,Y,Z):- column(Y,X,Z).
all_permutations(X,Y,Z):- column(Y,Z,X).
all_permutations(X,Y,Z):- column(Z,X,Y).
all_permutations(X,Y,Z):- column(Z,Y,X).

%select two positions in the same row or column
select_positions(X,Y):-neighbor(X,Y).
select_positions(X,Y):-row(X,_,Y).
select_positions(X,Y):-column(X,_,Y).

%Compter think for the game
%add piece
%H1: make two choices for example if you have two pieces (1,4) & (4,1) play the piece in position (1,1).
%H2: if there are two pieces in the same row or in the same column play the third one for example of you have (1,1) & (1,4) play (1,7).
%H3: try to make two choices for example if you have (1,4) play (4,1) to apply H1 the next time.
%H4: Choose position with big number of connections.
%H6: prevent the other player to have two choices.
%H5: prevent the other player to have triple.
%priority order: h6,h2,h1,h5,h3,h4
%delete piece
%H7 delete the main piece if the player have two choices.
%H8 delete one of two pieces in the same row or column to prevent the another player to get triple.
%H9 delete on of two pieces will make two choices with add another piece
%H10 delete a piece with a big number of connections
%move piece
%H11 if the player can have a triple in one move
%H12 prevent the other player to have triple by move one piece
%H13 if the player can have a triple in tow moves
%H13 prevent the player can have a triple in tow moves
%************************************************************************************

%print the delete in the computer turn
computer_print_delet(Z):- dim(A,B,Z)/*,write("The computer delete the piece("),write(A),write(","),write(B),write(")."),nl*/.

%print the add in the computer turn
computer_print_add(Z):- dim(A,B,Z)/*,write("The computer add the piece("),write(A),write(","),write(B),write(")."),nl*/.

%print the move in the computer turn
computer_print_move(Z1,Z):- dim(A1,B1,Z1),dim(A,B,Z),write("The computer move the piece from("),write(A1),write(","),write(B1),write(") to ("),write(A),write(","),write(B),write(")"),nl.

h7(Board,NewBoard,T):- two_choices(A,B,C,D,E),position_has_Tpiece(Board,C,T),check_h1(Board,A,B,D,E,T),remove_piece(Board,NewBoard,C),computer_print_delet(C).

h8(Board,NewBoard,T):- all_permutations(X,Y,Z), available_position(Board,Z),position_has_Tpiece(Board,X,T),position_has_Tpiece(Board,Y,T),\+ triple(Board,X,T1),remove_piece(Board,NewBoard,X),computer_print_delet(C).

/*h9(Board,NewBoard,T):- another_player(T,T1), select_positions(X,Y),select_positions(Y,Z),X\=Z,\+ all_permutations(X,Y,Z),position_has_Tpiece(Board,Y,T1),position_has_Tpiece(Board,X,T1),
	all_permutations(X,Y,Z1),available_position(Board,Z1),all_permutations(Y,Z,Z2),available_position(Board,Z2),
	available_position(Board,Z2),remove_piece(Board,NewBoard,X),computer_print_delet(X),!.*/

%this herstic is not final should be changed to be more intelligent
h10(Board,NewBoard,T):- another_player(T,T1),position_has_Tpiece(Board,5,T1),remove_piece(Board,NewBoard,5),computer_print_delet(5).
h10(Board,NewBoard,T):- another_player(T,T1),position_has_Tpiece(Board,11,T1),remove_piece(Board,NewBoard,11),computer_print_delet(11).
h10(Board,NewBoard,T):- another_player(T,T1),position_has_Tpiece(Board,14,T1),remove_piece(Board,NewBoard,14),computer_print_delet(14).
h10(Board,NewBoard,T):- another_player(T,T1),position_has_Tpiece(Board,20,T1),remove_piece(Board,NewBoard,20),computer_print_delet(20).
h10(Board,NewBoard,T):- another_player(T,T1),position_has_Tpiece(Board,2,T1),remove_piece(Board,NewBoard,2),computer_print_delet(2).
h10(Board,NewBoard,T):- another_player(T,T1),position_has_Tpiece(Board,8,T1),remove_piece(Board,NewBoard,8),computer_print_delet(8).
h10(Board,NewBoard,T):- another_player(T,T1),position_has_Tpiece(Board,10,T1),remove_piece(Board,NewBoard,10),computer_print_delet(10).
h10(Board,NewBoard,T):- another_player(T,T1),position_has_Tpiece(Board,12,T1),remove_piece(Board,NewBoard,12),computer_print_delet(12).
h10(Board,NewBoard,T):- another_player(T,T1),position_has_Tpiece(Board,13,T1),remove_piece(Board,NewBoard,13),computer_print_delet(13).
h10(Board,NewBoard,T):- another_player(T,T1),position_has_Tpiece(Board,15,T1),remove_piece(Board,NewBoard,15),computer_print_delet(15).
h10(Board,NewBoard,T):- another_player(T,T1),position_has_Tpiece(Board,17,T1),remove_piece(Board,NewBoard,17),computer_print_delet(17).
h10(Board,NewBoard,T):- another_player(T,T1),position_has_Tpiece(Board,23,T1),remove_piece(Board,NewBoard,23),computer_print_delet(23).
h10(Board,NewBoard,T):- another_player(T,T1),position_has_Tpiece(Board,1,T1),remove_piece(Board,NewBoard,1),computer_print_delet(1).
h10(Board,NewBoard,T):- another_player(T,T1),position_has_Tpiece(Board,3,T1),remove_piece(Board,NewBoard,3),computer_print_delet(3).
h10(Board,NewBoard,T):- another_player(T,T1),position_has_Tpiece(Board,4,T1),remove_piece(Board,NewBoard,4),computer_print_delet(4).
h10(Board,NewBoard,T):- another_player(T,T1),position_has_Tpiece(Board,6,T1),remove_piece(Board,NewBoard,6),computer_print_delet(6).
h10(Board,NewBoard,T):- another_player(T,T1),position_has_Tpiece(Board,7,T1),remove_piece(Board,NewBoard,7),computer_print_delet(7).
h10(Board,NewBoard,T):- another_player(T,T1),position_has_Tpiece(Board,9,T1),remove_piece(Board,NewBoard,9),computer_print_delet(9).
h10(Board,NewBoard,T):- another_player(T,T1),position_has_Tpiece(Board,16,T1),remove_piece(Board,NewBoard,16),computer_print_delet(16).
h10(Board,NewBoard,T):- another_player(T,T1),position_has_Tpiece(Board,18,T1),remove_piece(Board,NewBoard,18),computer_print_delet(18).
h10(Board,NewBoard,T):- another_player(T,T1),position_has_Tpiece(Board,19,T1),remove_piece(Board,NewBoard,19),computer_print_delet(19).
h10(Board,NewBoard,T):- another_player(T,T1),position_has_Tpiece(Board,21,T1),remove_piece(Board,NewBoard,21),computer_print_delet(21).
h10(Board,NewBoard,T):- another_player(T,T1),position_has_Tpiece(Board,22,T1),remove_piece(Board,NewBoard,22),computer_print_delet(22).
h10(Board,NewBoard,T):- another_player(T,T1),position_has_Tpiece(Board,24,T1),remove_piece(Board,NewBoard,24),computer_print_delet(24).

/*h10(Board,NewBoard,T,25,R,RIdx).
h10(Board,NewBoard,T,Idx,R,RIdx):- position_has_Tpiece(Board,Idx,T),remove_piece(Board,NewBoard1,Idx),h10(Board,,*/

delete_rules(Board,NewBoard,T):- h8(Board,NewBoard,T).
delete_rules(Board,NewBoard,T):- h7(Board,NewBoard,T).
delete_rules(Board,NewBoard,T):- h10(Board,NewBoard,T,1).


%apply priority to delete one piece
computer_delete_piece(Board,T,NewBoard):- another_player(T,T1),delete_rules(Board,NewBoard,T1).

%check if the computer has triple
computer_check_triple(Board,X,T,NewBoard):- triple(Board,X,T),computer_delete_piece(Board,T,NewBoard).
computer_check_triple(L,_,_,L).

check_h1_1(Board,_,_,D,E,T):-available_position(Board,D),position_has_Tpiece(Board,E,T).
check_h1_1(Board,_,_,D,E,T):-available_position(Board,E),position_has_Tpiece(Board,D,T).
check_h1(Board,A,B,D,E,T):-available_position(Board,A),position_has_Tpiece(Board,B,T),check_h1_1(Board,A,B,D,E,T).
check_h1(Board,A,B,D,E,T):-available_position(Board,B),position_has_Tpiece(Board,A,T),check_h1_1(Board,A,B,D,E,T).

h1(Board,NewBoard,T,C):- two_choices(A,B,C,D,E),available_position(Board,C),check_h1(Board,A,B,D,E,T),add_piece(Board,NewBoard,T,C).

h2(Board,NewBoard,T,Z):- all_permutations(X,Y,Z),available_position(Board,Z),position_has_Tpiece(Board,X,T),position_has_Tpiece(Board,Y,T),add_piece(Board,NewBoard1,T,Z),computer_print_add(Z),computer_check_triple(NewBoard1,Z,T,NewBoard).

h5(Board,NewBoard,T,Y):- another_player(T,T1),h2(Board,NewBoard,T1,Y).
h6(Board,NewBoard,T,Y):- another_player(T,T1),h1(Board,NewBoard,T1,Y).

/*h3(Board,NewBoard,T,Z):- neighbor(X,Y),neighbor(Y,Z),X\=Z,\+ all_permutations(X,Y,Z),position_has_Tpiece(Board,X,T),available_position(Board,Z),available_position(Board,Y),
	all_permutations(X,Y,Z1),available_position(Board,Z1),all_permutations(Y,Z,Z2),available_position(Board,Z2),
	add_piece(Board,NewBoard1,T,Z),computer_print_add(Z),computer_check_triple(NewBoard1,Z,T,NewBoard).*/

computer_add_piece(Board,NewBoard,Idx,T):- available_position(Board,Idx),
						add_piece(Board,NewBoard1,T,Idx), 
						computer_check_triple(NewBoard1,Idx,T,NewBoard).
%check if Idx one of the four places
check_Idx(Board,Idx,B,D,E,Idx,T):-available_position(Board,Idx),available_position(Board,B),available_position(Board,E),position_has_Tpiece(Board,D,T).
check_Idx(Board,Idx,B,D,E,Idx,T):-available_position(Board,Idx),available_position(Board,B),available_position(Board,D),position_has_Tpiece(Board,E,T).
check_Idx(Board,A,Idx,D,E,Idx,T):-available_position(Board,A),available_position(Board,Idx),available_position(Board,E),position_has_Tpiece(Board,D,T).
check_Idx(Board,A,Idx,D,E,Idx,T):-available_position(Board,A),available_position(Board,Idx),available_position(Board,D),position_has_Tpiece(Board,E,T).
check_Idx(Board,A,B,Idx,E,Idx,T):-available_position(Board,A),available_position(Board,Idx),available_position(Board,E),position_has_Tpiece(Board,B,T).
check_Idx(Board,A,B,Idx,E,Idx,T):-available_position(Board,B),available_position(Board,Idx),available_position(Board,E),position_has_Tpiece(Board,A,T).
check_Idx(Board,A,B,D,Idx,Idx,T):-available_position(Board,B),available_position(Board,D),available_position(Board,Idx),position_has_Tpiece(Board,A,T).
check_Idx(Board,A,B,D,Idx,Idx,T):-available_position(Board,A),available_position(Board,D),available_position(Board,Idx),position_has_Tpiece(Board,B,T).

%count the posibilities to make two choices with Idx and center C
search_4(Board,D,E,T):-available_position(Board,E).
search_3(Board,D,E,T):-position_has_Tpiece(Board,D,T),!,search_4(Board,D,E,T).
search_3(Board,D,E,T):-available_position(Board,D),position_has_Tpiece(Board,E,T).
search_2(Board,A,B,D,E,T):-available_position(Board,B),search_3(Board,D,E,T).
search_1(Board,A,B,D,E,T):-position_has_Tpiece(Board,A,T),!,search_2(Board,A,B,D,E,T).
search_1(Board,A,B,D,E,T):-available_position(Board,A),position_has_Tpiece(Board,B,T),search_3(Board,D,E,T).
search_two_choices(Board,T,0,Idx,25).
search_two_choices(Board,T,N,Idx,C):- available_position(Board,C),two_choices(A,B,C,D,E),check_Idx(Board,A,B,D,E,Idx,T),
					
					/*search_1(Board,A,B,D,E,T),*/C1 is C+1,search_two_choices(Board,T,N1,Idx,C1),N is N1+1,
write(A),write(' '),write(B),write(' '),write(C),write(' '),write(D),write(' '),write(E),nl.
search_two_choices(Board,T,N,Idx,C):-C1 is C+1,search_two_choices(Board,T,N,Idx,C1).

weight_Board(Board,[],[],T,25).
weight_Board(Board,[N|Y],[I|IB],T,Idx):- available_position(Board,Idx),
					search_two_choices(Board,T,N1,Idx,1),
					/*another_player(T,T1),
					search_two_choices(Board,T1,N2,Idx,1),*/
					N is N1 * 3,
					I is Idx,
					Idx1 is Idx+1,
					weight_Board(Board,Y,IB,T,Idx1).
weight_Board(Board,NewBoard,IBoard,T,Idx):-Idx1 is Idx+1,weight_Board(Board,NewBoard,IBoard,T,Idx1).

%we need to change to quick sort
%sort the list depending on the weights
sort([],[],[],[]).
sort([X],[X],[Y],[Y]).
sort([A,B|C],[B,A|C],[X,Y|Z],[Y,X|Z]):-A<B.
sort([A|C],[A|C1],[X|Z],[X|Z1]):-sort(C,C1,Z,Z1).
sort_24_time(Board,Board,IBoard,IBoard,577).
sort_24_time(Board,NewBoard,IBoard,NewIBoard,Idx):-Idx1 is Idx+1,sort(Board,NewBoard1,IBoard,NewIBoard1),sort_24_time(NewBoard1,NewBoard,NewIBoard1,NewIBoard,Idx1).

%Compute heuristics
compute_H(Board,R):- count_piece(Board,E,Q), R is Q - E.

max(R1,R2,R1,NIdx,OIdx,NIdx):-R1>R2.
max(R1,R2,R2,OIdx,OIdx,NIdx).

min(R1,R2,R1,NIdx,OIdx,NIdx):-R1<R2.
min(R1,R2,R2,OIdx,OIdx,NIdx).

min_max(Level,R1,R2,R,RIdx,OIdx,NIdx):- 0 is mod(Level,2),max(R1,R2,R,RIdx,OIdx,NIdx),!.
min_max(Level,R1,R2,R,RIdx,OIdx,NIdx):- min(R1,R2,R,RIdx,OIdx,NIdx).

defult_value(Level,50):- 0 is mod(Level,2).
defult_value(_,-50).

pruning(Board,Level,T,Idx1,R,Beta,-50,Son,RIdx,TIdx):- alpha_beta(Board,Level,T,Idx1,R,Beta,-50,Son,RIdx,TIdx).
pruning(Board,Level,T,Idx1,R,Beta,50,Son,RIdx,TIdx):- alpha_beta(Board,Level,T,Idx1,R,Beta,50,Son,RIdx,TIdx).
pruning(Board,Level,T,Idx1,R,Beta,Father,Son,RIdx,TIdx):- 0 is mod(Level,2),Father<Beta,alpha_beta(Board,Level,T,Idx1,R,Beta,Father,Son,RIdx,TIdx).
pruning(Board,Level,T,Idx1,R,Beta,Father,Son,RIdx,TIdx):- 1 is mod(Level,2),Father>Beta,alpha_beta(Board,Level,T,Idx1,R,Beta,Father,Son,RIdx,TIdx).
pruning(Board,Level,T,Idx1,Beta,Beta,Father,Son,RIdx,TIdx).

alpha_beta(_,_,_,25,R,R,_,_,RIdx,RIdx).
alpha_beta(Board,8,T,_,R,_,_,_,RIdx,RIdx):- compute_H(Board,R)/*,write(R),nl,write(T),write(': '),write(Board),nl*/.
alpha_beta(Board,Level,T,Idx,R,Beta,Father,Son,RIdx,TIdx):- \+ available_position(Board,Idx),
							Idx1 is Idx+1,
							alpha_beta(Board,Level,T,Idx1,R,Beta,Father,Son,RIdx,TIdx).
alpha_beta(Board,Level,T,Idx,R,Beta,Father,Son,RIdx,TIdx):- Nextlevel is Level + 1,		
					Idx1 is Idx+1,
					another_player(T,T1),
					defult_value(Nextlevel,Beta1),
					computer_add_piece(Board,NewBoard1,Idx,T),
					rules(NewBoard1,NewBoard,Nextlevel,T1,1,Alpha1,Beta1,Son,Beta1,RIdx1,Idx),
					min_max(Nextlevel,Alpha1,Beta,Beta2,RIdx2,TIdx,Idx),
					pruning(Board,Level,T,Idx1,R,Beta2,Father,Beta2,RIdx,RIdx2).

h4(Board,NewBoard,T):- 	rules(Board,NewBoard1,1,T,1,R,-50,50,50,RIdx,-50),write('**** '),write(R),nl,computer_add_piece(Board,NewBoard,RIdx,T),write(RIdx),nl,computer_print_add(RIdx).				

debug(Board,1,R,Idx):-write('Idx('),write(Idx),write(') -'),write('Result('),write(R),write(') -'),write(': '),write(Board),nl.
debug(_,_,_,_).

debug_aaa(2,24,K):-write('FFFF '),write(K),nl.
debug_bbb(3,Idx,K):-write('AAAA '),write(Idx),write(' '),write(K),nl.
debug_aaa(_,_,_).
debug_bbb(_,_,_).

/*debug_min_max(Level,Idx,-1,Beta,Beta2,RIdx2,TIdx,Idx):-
								write(Level),write(' '),
								write(Idx),write('\n').
debug_min_max(2,Idx,Alpha1,Beta,Beta2,RIdx2,TIdx,Idx):-
								write('Min-Max: '),write('Level('),write(2),write(') - '),
								write('Idx('),write(Idx),write(') -'),
								write('Alpha1('),write(Alpha1),write(') -'),write('\n').*/
/*debug_min_max(3,Idx,Alpha1,Beta,Beta2,RIdx2,TIdx,Idx):-
								write('Min-Max: '),write('Level('),write(3),write(') - '),
								write('Idx('),write(Idx),write(') -'),
								write('Alpha1('),write(Alpha1),write(') -'),
								write('Beta('),write(Beta),write(') -'),
								write('Beta2('),write(Beta2),write(') -'),
								write('RIdx2('),write(RIdx2),write(') -'),
								write('TIdx('),write(TIdx),write(') -'),
								write('Idx('),write(Idx),write(') -'),write('\n').
debug_min_max(2,Idx,Alpha1,Beta,Beta2,RIdx2,TIdx,Idx):-write('Min-Max: '),write('Level('),write(2),write(') - '),
								write('Idx('),write(Idx),write(') -'),
								write('Alpha1('),write(Alpha1),write(') -'),
								write('Beta('),write(Beta),write(') -'),
								write('Beta2('),write(Beta2),write(') -'),
								write('RIdx2('),write(RIdx2),write(') -'),
								write('TIdx('),write(TIdx),write(') -'),
								write('Idx('),write(Idx),write(') -'),write('\n').
debug_min_max(1,Idx,Alpha1,Beta,Beta2,RIdx2,TIdx,Idx):-write('Min-Max: '),write('Level('),write(1),write(') - '),
								write('Idx('),write(Idx),write(') -'),
								write('Alpha1('),write(Alpha1),write(') -'),
								write('Beta('),write(Beta),write(') -'),
								write('Beta2('),write(Beta2),write(') -'),
								write('RIdx2('),write(RIdx2),write(') -'),
								write('TIdx('),write(TIdx),write(') -'),
								write('Idx('),write(Idx),write(') -'),write('\n').*/
/*debug_min_max(8,Idx,Alpha1,Beta,Beta2,RIdx2,TIdx,Idx):-write('Min-Max: '),write('Level(3) - '),
								write('Idx('),write(Idx),write(') -'),
								write('Alpha1('),write(Alpha1),write(') -'),
								write('Beta('),write(Beta),write(') -'),
								write('Beta2('),write(Beta2),write(') -'),
								write('RIdx2('),write(RIdx2),write(') -'),
								write('TIdx('),write(TIdx),write(') -'),
								write('Idx('),write(Idx),write(') -'),nl.*/
debug_min_max(Level,Idx,Alpha1,Beta,Beta2,RIdx2,TIdx,Idx).

rules(Board,NewBoard,Level,T,Idx,R,Beta,Father,Son,RIdx,TIdx):- Level<8,h2(Board,NewBoard1,T,RIdx),Nextlevel is Level + 1,another_player(T,T1),
									defult_value(Nextlevel,Beta1),rules(NewBoard1,NewBoard,Nextlevel,T1,1,R,Beta1,Son,Beta1,RIdx1,RIdx).
rules(Board,NewBoard,Level,T,Idx,R,Beta,Father,Son,RIdx,TIdx):- Level<8,h5(Board,NewBoard1,T,RIdx),Nextlevel is Level + 1,another_player(T,T1),
									defult_value(Nextlevel,Beta1),rules(NewBoard1,NewBoard,Nextlevel,T1,1,R,Beta1,Son,Beta1,RIdx1,RIdx).
rules(Board,NewBoard,Level,T,Idx,R,Beta,Father,Son,RIdx,TIdx):- Level<8,h1(Board,NewBoard1,T,RIdx),Nextlevel is Level + 1,another_player(T,T1),
									defult_value(Nextlevel,Beta1),rules(NewBoard1,NewBoard,Nextlevel,T1,1,R,Beta1,Son,Beta1,RIdx1,RIdx).
rules(Board,NewBoard,Level,T,Idx,R,Beta,Father,Son,RIdx,TIdx):- Level<8,h6(Board,NewBoard1,T,RIdx),Nextlevel is Level + 1,another_player(T,T1),
									defult_value(Nextlevel,Beta1),rules(NewBoard1,NewBoard,Nextlevel,T1,1,R,Beta1,Son,Beta1,RIdx1,RIdx).
rules(Board,NewBoard,Level,T,Idx,R,Beta,Father,Son,RIdx,TIdx):- alpha_beta(Board,Level,T,Idx,R,Beta,Father,Son,RIdx,TIdx).

h11(Board,NewBoard,T):- all_permutations(X,Y,Z),
neighbor(Z,Z1),
Y\=Z1,X\=Z1,
position_has_Tpiece(Board,X,T),
position_has_Tpiece(Board,Y,T),
position_has_Tpiece(Board,Z1,T),
available_position(Board,Z),
add_piece(Board,NewBoard1,T,Z),
remove_piece(NewBoard1,NewBoard2,Z1),
computer_check_triple(NewBoard2,Z,T,NewBoard),computer_print_move(Z1,Z).

h12(Board,NewBoard,T):- another_player(T,T1),all_permutations(X,Y,Z),neighbor(Z,Z1),neighbor(Z,Z2),Y\=Z1,Y\=Z2,position_has_Tpiece(Board,X,T1),position_has_Tpiece(Board,Y,T1),available_position(Board,Z)
	,position_has_Tpiece(Board,Z1,T1),position_has_Tpiece(Board,Z2,T),add_piece(Board,NewBoard1,T,Z), remove_piece(NewBoard1,NewBoard,Z2),computer_print_move(Z2,Z).

h13(Board,NewBoard,T):- all_permutations(X,Y,Z),neighbor(Z,Z1),Y\=Z1,position_has_Tpiece(Board,X,T),position_has_Tpiece(Board,Y,T),position_has_Tpiece(Board,Z,T),available_position(Board,Z1),
	add_piece(Board,NewBoard1,T,Z1), remove_piece(NewBoard1,NewBoard,Z).

h14(Board,NewBoard,T):-
                        another_player(T,T1),
                        all_permutations(X,Y,Z),
                        neighbor(Z,Z1),
                        neighbor(Z1,Z2),
                        \+neighbor(X,Z2),
                        \+neighbor(Y,Z2),
                        Y\=Z1,
                        position_has_Tpiece(Board,X,T1), 
                        position_has_Tpiece(Board,Y,T1),
                        position_has_Tpiece(Board,Z,T1),
                        position_has_Tpiece(Board,Z2,T),
                        available_position(Board,Z1),
                        add_piece(Board,NewBoard1,T,Z2),
                        remove_piece(NewBoard1,NewBoard,Z2).

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

/*play(Board,T,N):-  0 is (N mod 2),N<19, write('make triple'),nl,h2(Board,NewBoard,T), another_player(T,T1),N1 is N+1,play(NewBoard,T1,N1),!.
play(Board,T,N):-  0 is (N mod 2),N<19, write('prevent triple'),nl,h5(Board,NewBoard,T), another_player(T,T1),N1 is N+1,play(NewBoard,T1,N1),!.
play(Board,T,N):-  0 is (N mod 2),N<19, write('create choice'),nl,h1(Board,NewBoard,T), another_player(T,T1),N1 is N+1,play(NewBoard,T1,N1),!.
play(Board,T,N):-  0 is (N mod 2),N<19, write('prevent choice'),nl,h6(Board,NewBoard,T), another_player(T,T1),N1 is N+1,play(NewBoard,T1,N1),!.
play(Board,T,N):-  0 is (N mod 2),N<19, write('create choices'),nl,h3(Board,NewBoard,T), another_player(T,T1),N1 is N+1,play(NewBoard,T1,N1),!.*/
play(Board,T,N):-  0 is (N mod 2),N<19, write('multi connextion'),nl,h4(Board,NewBoard,T), another_player(T,T1),N1 is N+1,play(NewBoard,T1,N1).
%************************************************************************************
%the second part of the game (move the pieces)
%************************************************************************************
%The player turn
play(Board,T,_):- count_piece(Board,E,Q),E < 3,another_player(T,T1),write('The game is finished. THE WINNER IS THE PLAYER: *** '),write(T1),write(' ***'),nl,
	write('Player a has '),write(E),write(' pieces.'),nl,write('Player b has '),write(Q),write(' pieces.'),nl.
play(Board,T,_):- count_piece(Board,E,Q),Q < 3,another_player(T,T1),write('The game is finished. THE WINNER IS THE PLAYER: *** '),write(T1),write(' ***'),nl,
	write('Player a has '),write(E),write(' pieces.'),nl,write('Player b has '),write(Q),write(' pieces.'),nl.
play(Board,T,N):- 1 is (N mod 2),\+ can_move(Board,T),another_player(T,T1),write('The game is finished. THE WINNER IS THE PLAYER: *** '),write(T1),write(' ***'),nl,
	count_piece(Board,R1,R2),write('Player a has '),write(R1),write(' pieces.'),nl,write('Player b has '),write(R2),write(' pieces.'),nl.
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

play(Board,T,N):- 0 is (N mod 2),write('add triple'),h11(Board,NewBoard,T),another_player(T,T1),N1 is N+1,play(NewBoard,T1,N1),!.
play(Board,T,N):- 0 is (N mod 2),write('prevent triple'),h12(Board,NewBoard,T),another_player(T,T1),N1 is N+1,play(NewBoard,T1,N1),!.
play(Board,T,N):- 0 is (N mod 2),write('remove triple'),h13(Board,NewBoard,T),another_player(T,T1),N1 is N+1,play(NewBoard,T1,N1),!.
play(Board,T,N):- 0 is (N mod 2),write('prevent the other to remove triple'),h14(Board,NewBoard,T),another_player(T,T1),N1 is N+1,play(NewBoard,T1,N1),!.


new_game:- open('file.txt',write, Stream),play(['e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e'],'a',1),close(Stream).

%pp:- weight_Board([a,e,e,e,e,e,e,e,e,e,e,e,e,e,e,e,e,e,e,e,e,e,e,e],NewBoard,IBoard,'a',1),sort_24_time(NewBoard,NB,IBoard,NIB,1),write(NB),nl,write(NIB),nl.
%kk:- search_1([a,e,e,e,e,e,e,e,e,a,e,e,e,e,e,e,e,e,e,e,e,e,e,e],1,2,15,24,'a'),write('true'),nl.
%aa:- computer_add_piece(['a','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e'],NewBoard,1,'b').


