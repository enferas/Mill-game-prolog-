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
	write('  1  2  3  4  5  6  7'),nl,
	write('1 '),print_element(Board,1),write('--------'),print_element(Board,2),write('--------'),print_element(Board,3),nl, 
	write('  |        |        |'),nl,
	write('2 |  '),print_element(Board,4),write('-----'),print_element(Board,5),write('-----'),print_element(Board,6),write('  |'),nl,
	write('  |  |     |     |  |'),nl,
	write('3 |  |  '),print_element(Board,7),write('--'),print_element(Board,8),write('--'),print_element(Board,9),write('  |  |'),nl,
	write('  |  |  |     |  |  |'),nl,
	write('4 '),print_element(Board,10),write('--'),print_element(Board,11),write('--'),print_element(Board,12),write('     '),
		print_element(Board,13),write('--'),print_element(Board,14),write('--'),print_element(Board,15),nl,
	write('  |  |  |     |  |  |'),nl,
	write('5 |  |  '),print_element(Board,16),write('--'),print_element(Board,17),write('--'),print_element(Board,18),write('  |  |'),nl,
	write('  |  |     |     |  |'),nl,
	write('6 |  '),print_element(Board,19),write('-----'),print_element(Board,20),write('-----'),print_element(Board,21),write('  |'),nl,
	write('  |        |        |'),nl,
	write('7 '),print_element(Board,22),write('--------'),print_element(Board,23),write('--------'),print_element(Board,24),nl.

%print_board(['e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e']).

%check if the position in empty or not
available_position(['e'|_],1).
available_position([_|Y],N):- N>0 ,N1 is N-1,available_position(Y,N1).

%check if the position in empty or not
position_has_Tpiece([T|_],1,T).
position_has_Tpiece([_|Y],N,T):- N>0 ,N1 is N-1,position_has_Tpiece(Y,N1,T).

%check if the move (add piece) is correct or not
check_add_piece(Board,X,Y,T):-position(X,Y),dim(X,Y,Z),available_position(Board,Z).

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

%playing the game
%the first part of the game (add pieces)
play(Board,T,N):- N<7,nl,print_board(Board),nl,
	write('***** Player '),write(T),write(' *****'),nl,
	write('Enter the number of row: '),nl,read(X),
	write('Enter the number of column: '),nl,read(Y),
	check_add_piece(Board,X,Y,T),dim(X,Y,Z),add_piece(Board,NewBoard,T,Z),
	check_triple(NewBoard,Z,T,NewBoard2),another_player(T,T1),N1 is N+1,play(NewBoard2,T1,N1).
play(Board,T,N):- N<7,write('Incorrect, this position is not available'),nl,play(Board,T,N).

%the second part of the game (move the pieces)
play(Board,T,N):- \+ can_move(Board,T),another_player(T,T1),write('The game is finished. THE WINNER IS THE PLAYER: ***'),write(T1),write(' ***'),nl,
	count_piece(Board,R1,R2),write('Player a has '),write(R1),write(' pieces.'),nl,write('Player b has '),write(R2),write(' pieces.'),nl.
play(Board,T,N):- nl,print_board(Board),nl,
	write('***** Player '),write(T),write(' *****'),nl,
	write('You should move one piece to the empty neighbor'),nl,
	write('Enter the number of row to the piece: '),nl,read(X1),
	write('Enter the number of column to the piece: '),nl,read(Y1),
	write('Enter the number of row to the position: '),nl,read(X2),
	write('Enter the number of column to the position: '),nl,read(Y2),
	check_add_piece(Board,X2,Y2,T),check_move_piece(Board,X1,Y1,T),dim(X2,Y2,Z2),dim(X1,Y1,Z1),neighbor(Z1,Z2),add_piece(Board,NewBoard,T,Z2),
	remove_piece(NewBoard,NewBoard2,Z1), check_triple(NewBoard2,Z2,T,NewBoard3),another_player(T,T1),play(NewBoard3,T1,N).
play(Board,T,N):- write('Incorrect, this move is not available'),nl,play(Board,T,N).

new_game:- play(['e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e'],'a',1).
