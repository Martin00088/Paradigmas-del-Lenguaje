categoria(infantil, 5, 12).
categoria(juvenil, 13, 20).
categoria(mayor, 21, 45).

genera([],_,0):-!.
genera([[_,Edad]|Cola],C,N):-categoria(C,A,B),Edad>=A, Edad=<B,genera(Cola,C,N1),N is N1+1.
genera([[_,Edad]|Cola],C,N):-categoria(C,A,B),(Edad<A;Edad>B),genera(Cola,C,N).