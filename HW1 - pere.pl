
mother(liivia, lea).
mother(heiti, lea).

mother(egle, liivia).
mother(eigo, liivia).
mother(taavi, liivia).
mother(rainer, liivia).

mother(kadri, maiki).
mother(hardi, maiki).

female(lea).
female(liivia).
female(maiki).
female(egle).
female(kadri).

male(vello).
male(elmo).
male(heiti).
male(taavi).
male(eigo).
male(rainer).
male(hardi).

married(lea, vello).
married(liivia, elmo).
married(maiki, heiti).


%Father
father(Child, Father):-
  mother(Child,Mother),
  married(Mother,Father),
  male(Father),
  Child\=Father.

  
%Brodhers and Sisters
brother(Child, Brodher):-
  mother(Child, Mother),
  mother(Brodher, Mother),
  male(Brodher),
  Child\=Brodher.

sister(Child,Sister):-
  mother(Child, Mother),
  mother(Sister, Mother),
  female(Sister),
  Child\=Sister.

  
%Aunt and uncle
aunt(Child, Aunt):-
	mother(Child, Mother),
	sister(Mother, Aunt).
	
uncle(Child, Uncle):-
	mother(Child, Mother),
	brother(Mother, Uncle).	

	
% grandmother and grandfather
grandmother(Child, Grandmother):-
	mother(Child, Mother),
	mother(Mother, Grandmother).
	
grandfather(Child, Grandfather):-
	mother(Child, Mother),
	father(Mother, Grandfather).

  
  