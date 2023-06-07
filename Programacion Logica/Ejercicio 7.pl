union([],L1,L2).
union([X|L1],L2,[X|L3]):-union(L1,L2,L3).

