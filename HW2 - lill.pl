
lill(N):-
%RIDA1
tab(N), o2(N), nl,
%RIDA2
tsykkel(N,N),
%RIDA3
tab(N), o2(N), nl,
%RIDA4
tab(N), o1(N).

	
%RIDA2 tsykkli meetod
tsykkel(X,Y):-	
	Y > 0,
	Y1 is Y-1,
		o2(X),
		tab(X),
		o2(X),
		nl,
		tsykkel(X,Y1).
tsykkel(_,0).


%"O" ja "|" kirjutamise meetodid
o2(N):-
	N>0,
	O is N-1,	
	write('O'),
	o2(O).
o2(0).

o1(N):-
	N>0,
	O is N-1,	
	write('|'),
	o1(O).
o1(0).





