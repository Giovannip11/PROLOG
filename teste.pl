pai(max,giggio).
pai(jarbas,max).
pai(max,amanda).
pai(jarbas,mauricio).

pai(mauricio,bruno).
pai(mauricio,pedro).
pai(mauricio,camila).

mae(nenzinha,max).
mae(nenzinha,mauricio).

mae(daniela,giggio).
mae(daniela,amanda).

mae(luciane,bruno).
mae(luciane,pedro).
mae(luciane,camila).

avo(X,Y):-
pai(X,Z),pai(Z,Y);
pai(X,Z),mae(Z,Y).

avó(X,Y):-
    mae(X,Z),pai(Z,Y);
    mae(X,Z),mae(Z,Y).


irmao(X,Y):-
    pai(P,X),pai(P,Y),X\=Y;
    mae(M,X),mae(M,X),X\=Y.





