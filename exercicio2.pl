progenitor(maria,jose).
progenitor(joao,jose).
progenitor(joao,ana).
progenitor(jose,julia).
progenitor(jose,iris).
progenitor(iris,jorge).

masculino(jose).
masculino(joao).
masculino(jorge).
feminino(maria).
feminino(julia).
feminino(ana).
feminino(iris).

filho(X,Y):-
    progenitor(X,Y).

mae(X,Y):-
    progenitor(X,Y),
    feminino(X).
pai(X ,Y):-
    progenitor(X,Y),
    masculino(X).
avo_m(X,Y):-
    progenitor(X,Z),
    progenitor(Z,Y),
    masculino(X).
avo_f(X,Y):-
    progenitor(X,Z),
    progenitor(Z,Y),
    feminino(X).
irma(X,Y):-
    progenitor(H,X),
    progenitor(H,Y),
    feminino(X).
irmao(X,Y):-
    progenitor(H,X),
    progenitor(H,Y),
    masculino(X).



