pai(ivo,eva).
pai(gil,rai).
pai(gil,clo).
pai(gil,ary).
pai(rai,noe).
pai(ary,gal).

mae(ana,eva).
mae(bia,rai).
mae(bia,clo).
mae(bia,ary).
mae(eva,noe).
mae(lia,gal).

homem(ivo).
homem(gil).
homem(rai).
homem(ary).
homem(noe).

mulher(ana).
mulher(bia).
mulher(eva).
mulher(clo).
mulher(lia).
mulher(gal).

gerou(X,Y):-
    pai(X,Y);
    mae(X,Y).
filho(X,Y):-
    gerou(Y,X),homem(X).
filha(X,Y):-
    gerou(Y,X),mulher(X).

tio(X,Y) :- gerou(Z,Y),gerou(K,Z),gerou(K,X),homem(X),Z\=X.
tia(X,Y) :- gerou(Z,Y),gerou(K,Z),gerou(K,X),mulher(X),Z\=X.

primo(X,Y):-
    gerou(Z,Y),tio(Z,X),homem(X);
    gerou(Z,Y),tia(Z,X),homem(X).

prima(X,Y):-
    gerou(Z,Y),tio(Z,X),mulher(X),
    gerou(Z,Y),tio(Z,X),homem(X).


irmao(X,Y):-
    pai(P,X),pai(P,Y),X\=Y;
    mae(M,X),mae(M,X),X\=Y.
avô(X,Y):-
    gerou(X,A),gerou(A,Y),homem(X).
avó(X,Y):-
    gerou(X,A),gerou(A,Y),mulher(X).
