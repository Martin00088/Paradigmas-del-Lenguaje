/*Definir un predicado que calcule la longitud de una lista.*/
longitud([],0).
longitud([_|T],N):-longitud(T,N1),N is N1+1.