%tsukkel alla
arvud(0).
arvud(N):-
	N>0,
	Oo is N-1,
	weite(Oo),
	arvud(Oo).