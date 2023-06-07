%2. Construya una función que permita mostrar la clase a que corresponda un animal en caso de ser posible, sino mostrar un cartel de "ERROR".Ej.: ?- es (serpiente) reptil%

animales(mamifero([vaca,mono])).
animales(reptil([serpiente,coco])).
animales(pez([salmon])). 

es(X):- animales(Y), arg(1,Y,L1), member(X,L1), functor(Y,N,_), write("Es: "), write(N),!.
es(_):- write("ERROR").


