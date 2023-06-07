contar(_,[],0).
contar(X,[X|L1],N1):-!,contar(X,L1,N),N1 is N+1.
contar(X,[_|L1],N):-contar(X,L1,N).