person(obama, 10,12,1961, tallinn,energia,10-1, president).
person(merkel, 10,12,1954, tallinn,energia,10-2, kantsler).



synniaasta(Nimi, Aasta):-
	person(Nimi,_Paev,_Kuu, Aasta, _Linn, _Tanav, _MajaKorter, _Amet).

elukoht(Nimi, Elukoht):-
	person(Nimi,_Paev,_Kuu, _Aasta, Elukoht, _Tanav, _MajaKorter, _Amet).
	
eriala(Nimi, Eriala):-
	person(Nimi,_Paev,_Kuu, _Aasta, _Linn, _Tanav, _MajaKorter, Eriala).
