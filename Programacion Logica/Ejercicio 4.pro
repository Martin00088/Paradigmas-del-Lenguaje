hombre(carlos). 
hombre(juan). 
hombre(pedro). 
hermano(carlos,maria). 
hermano(carlos,juan). 
hermano(carlos,raul). 
madre(maria,luis). 
madre(maria,hugo). 
padre(raul,jose). 
tio(pablo,luis). 
tio(X,Y) :- hombre(X), hermano(X,Z), progenitor(Z,Y). 
progenitor(juan,pedro). 
progenitor(X,Y) :- padre(X,Y). 
progenitor(X,Y) :- madre(X,Y).

