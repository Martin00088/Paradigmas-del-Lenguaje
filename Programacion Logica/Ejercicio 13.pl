encontrar_pareja :- persona(H, m, List1), 
persona(M, f, List2), 
interes_comun(List1, List2,_), 
write(H), 
write('esta muy enamorado con '), 
write(M), nl. 
encontrar_pareja :- write("Fin de lista"). 
interes_comun(L1, L2, X) :- member(X, L1), member(X, L2), !. 
persona(carlos, m, [viajar,libros,basquet]). 
persona(maria, f, [viajar,libros,natacion]). 
persona(juana, f, [estudiar,libros,tenis]).
member(X, [X|_]). 
member(X, [_|L]) :- member(X,L). 