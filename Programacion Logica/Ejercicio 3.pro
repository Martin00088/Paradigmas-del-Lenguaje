padre(juan,sofia).
madre(gloria,pedro).
madre(gloria,sofia).
hombre(pedro).
mujer(sofia).
progenitor(X,Y):-padre(X,Y).
progenitor(X,Y):-madre(X,Y).
%es_madre (X). X es madre. %
es_madre(X):-madre(X,_).
%es_padre (X). X es padre. %
es_padre(X):-padre(X,_).
%es_hijo (X). X es hijo.%
es_hijo(X):-progenitor(_,X).
%hija (X,Y). X es hija de Y. %
hija(X,Y):-mujer(X),progenitor(Y,X).
%tio (X,Y). X es tío de Y.%
tio(X,Y):-hombre(X),progenitor(Z,Y),hermano(X,Z).
hermano(X,Y):-progenitor(Z,X),progenitor(Z,Y),X\=Y.
%sobrino(X,Y). X es sobrino de Y%
sobrino(X,Y):-hombre(X),tio(Y,X).
%prima(X,Y). X es prima de Y%
prima(X,Y):-mujer(X),progenitor(Z,X),progenitor(W,Y),hermano(Z,W).
%abuelo_o_abuela(X,Y). X es abuelo o abuela de Y%
abuelo_o_abuela(X,Y):-progenitor(X,Z),progenitor(Z,Y).
