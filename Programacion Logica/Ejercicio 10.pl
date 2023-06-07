%reves([3,2,1], [1,2,3]). ---> true (Hacer seguimiento) reves([3,2,1], X). ---> X=[1,2,3] %

reves([],[]).
reves([X|L],R):- reves(L,RL), append(RL,[X],R). 