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
print_element([X|Y],A,N):- A=:=N,write(X).
print_element([X|Y],A,N):- print_element(Y,A+1,N).
print_board(Board):- 
	write('  1  2  3  4  5  6  7'),nl,
	write('1 '),print_element(Board,1,1),write('--------'),print_element(Board,1,2),write('--------'),print_element(Board,1,3),nl, 
	write('  |        |        |'),nl,
	write('2 |  '),print_element(Board,1,4),write('-----'),print_element(Board,1,5),write('-----'),print_element(Board,1,6),write('  |'),nl,
	write('  |  |     |     |  |'),nl,
	write('3 |  |  '),print_element(Board,1,7),write('--'),print_element(Board,1,8),write('--'),print_element(Board,1,9),write('  |  |'),nl,
	write('  |  |  |     |  |  |'),nl,
	write('4 '),print_element(Board,1,10),write('--'),print_element(Board,1,11),write('--'),print_element(Board,1,12),write('     '),
		print_element(Board,1,13),write('--'),print_element(Board,1,14),write('--'),print_element(Board,1,15),nl,
	write('  |  |  |     |  |  |'),nl,
	write('5 |  |  '),print_element(Board,1,16),write('--'),print_element(Board,1,17),write('--'),print_element(Board,1,18),write('  |  |'),nl,
	write('  |  |     |     |  |'),nl,
	write('6 |  '),print_element(Board,1,19),write('-----'),print_element(Board,1,20),write('-----'),print_element(Board,1,21),write('  |'),nl,
	write('  |        |        |'),nl,
	write('7 '),print_element(Board,1,22),write('--------'),print_element(Board,1,23),write('--------'),print_element(Board,1,24),nl.

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


%playing the game
play(Board,T):- nl,print_board(Board),nl,
	write('***** Player '),write(T),write(' *****'),nl,
	write('Enter the number of row: '),nl,read(X),
	write('Enter the number of column: '),nl,read(Y),
	check_add_piece(Board,X,Y,T),dim(X,Y,Z),add_piece(Board,NewBoard,T,Z),
	check_triple(NewBoard,Z,T,NewBoard2),another_player(T,T1),play(NewBoard2,T1).
play(Board,T):- write('Incorrect, this position is not available'),nl,play(Board,T).

new_game():- play(['e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e','e'],'a').
