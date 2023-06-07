miarbol(tree(carla, 
tree(miguel, 
tree(carlos, nil, nil),
tree(maria, nil, nil)),
tree(miriam, 
tree(patri, nil, nil), 
tree(jorge, nil, nil)))).
recorrer(nil).
recorrer(tree(X,Y,Z)) :- write(X), nl, recorrer(Y), recorrer(Z). 
mostrar:- miarbol(X), recorrer(X).
