
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

%children(+X) - выводит всех детей X
children(X):-parent(X,Y),write(Y),nl,fail.

%mother(+X,+Y) - проверяет, является ли X матерью Y
mother(X, Y):-parent(X,Y),woman(X).

%mother(+X) - выводит маму X
mother(X):-parent(Y,X),woman(Y),write(Y).

%brother(+X,+Y) - проверяет, является ли X братом Y
brother(X,Y):-parent(P,X),parent(P,Y),man(P),man(X),X\=Y.

%brothers(+X) - выводит всех братьев X
brothers(X):-brother(Y,X),write(Y),nl,fail.

% b_s(+X,+Y) - проверяет, являются ли X и Y родными братом и сестрой или
% братьями или сестрами
b_s(X,Y):-mother(M,X),mother(M,Y),X\=Y.

% b_s(+X)- выводит всех братьев или сестер X
b_s(X):-b_s(X,Y),write(Y),nl,fail.
