% Definir un objetivo (consulta) que nos permita conocer todos los mortales que son griegos. %
humano(turing). 
humano(socrates). 
griego(socrates). 
mortal(X) :- humano(X) , griego(X). 
    