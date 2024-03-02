
man(voeneg).
man(ratibor).
man(boguslav).
man(velerad).
man(duhovlad).
man(svyatoslav).
man(dobrozhir).
man(bogomil).
man(zlatomir).

woman(goluba).
woman(lubomila).
woman(bratislava).
woman(veslava).
woman(zhdana).
woman(bozhedara).
woman(broneslava).
woman(veselina).
woman(zdislava).

parent(voeneg,ratibor).
parent(voeneg,bratislava).
parent(voeneg,velerad).
parent(voeneg,zhdana).

parent(goluba,ratibor).
parent(goluba,bratislava).
parent(goluba,velerad).
parent(goluba,zhdana).

parent(ratibor,svyatoslav).
parent(ratibor,dobrozhir).
parent(lubomila,svyatoslav).
parent(lubomila,dobrozhir).

parent(boguslav,bogomil).
parent(boguslav,bozhedara).
parent(bratislava,bogomil).
parent(bratislava,bozhedara).

parent(velerad,broneslava).
parent(velerad,veselina).
parent(veslava,broneslava).
parent(veslava,veselina).

parent(duhovlad,zdislava).
parent(duhovlad,zlatomir).
parent(zhdana,zdislava).
parent(zhdana,zlatomir).

men:- man(X),write(X),nl,fail.

women:- woman(X),write(X),nl,fail.

%children(+X) - shows all children of X
children(X):-parent(X,Y),write(Y),nl,fail.

% mother(+X,+Y) - checks if X is mother of Y
mother(X, Y):-parent(X,Y),woman(X).

%mother(+X) - shows mother of X
mother(X):-parent(Y,X),woman(Y),write(Y).

% brother(+X,+Y) -checks if X is brother of Y
brother(X,Y):-parent(P,X),parent(P,Y),man(P),man(X),X\=Y.

%brothers(+X) - shows all brothers of X
brothers(X):-brother(Y,X),write(Y),nl,fail.

% b_s(+X,+Y) - checks if X and Y are siblings
b_s(X,Y):-mother(M,X),mother(M,Y),X\=Y.

% b_s(+X)- shows all brothers and sisters of X
b_s(X):-b_s(X,Y),write(Y),nl,fail.

%Variant 12.
% daughter(+X, +Y)- checks if X is daughter of Y
daughter(X,Y):-parent(Y,X),woman(X).

% daughter(+X) - shows daugter(s) of X
daughter(X):-parent(X,D),woman(D),write(D),nl,fail.

% husband(+X, +Y)- checks if X is husband of Y
husband(X,Y):-parent(X,C),parent(Y,C),woman(Y),man(X).

% husband(+X) - shows husband od X
husband(X):-husband(Y,X),write(Y).


%№3

%ONLY USING FACTS

%grand_da(+X,+Y) - checks if X is granddaughter of Y
grand_da(X,Y):-woman(X), parent(M,X),parent(Y,M).

%grand_dats(+X) - shows all granddaughters of X
grand_dats(X):-parent(X,C),parent(C,G),woman(G),write(G),nl,fail.


%grand_ma_and_da(+X,+Y) - checks if X and Y are grand ma and granddauter
% or granddaughter and grandma
grand_ma_and_da(X,Y):-woman(X),woman(Y),parent(X,M),parent(M,Y); woman(X),woman(Y),parent(Y,M),parent(M,X).


%niece(+X,+Y) - checks if X is niece of Y
niece(X,Y):-woman(X),parent(P,X),parent(G,P),parent(G,Y).


%all_nieces(+X) - shows all nieces of X
all_nieces(X):-parent(P,X),parent(P,S),parent(S,C),woman(C),not(parent(X,C)),woman(P),write(C),nl,fail.


%USING ALREADY CREATED PREDICATES

%grand_da_2(+X,+Y) - checks if X is granddaughter of Y
grand_da_2(X,Y):- woman(X),mother(M,X),parent(Y,M);woman(X), mother(M,X), husband(H,M),parent(Y,H).

%grand_dats_2(+X) - shows all granddaugters of X
grand_dats_2(X):-grand_da(D,X),write(D),nl,fail.

% grand_ma_and_da_2(+X,+Y) - checks if X and Y are grand ma and
% granddauter or granddaughter and grandma
grand_ma_and_da_2(X,Y):-grand_da_2(X,Y),woman(X),woman(Y);grand_da_2(Y,X),woman(Y),woman(X).

%niece_2(+X,+Y) - checks if X is niece of Y
niece_2(X,Y):-woman(X),parent(P,X),b_s(P,Y).

%all_nieces_2(+X) - shows all nieces of X
all_nieces_2(X):-niece_2(N,X),write(N),nl,fail.

