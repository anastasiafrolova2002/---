
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
