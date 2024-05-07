ministra(celso,algebra).
ministra(wagner,linguagem_de_programacao).
ministra(otavio,software).
ministra(cassio,engenharia_de_software).


temAula(markin,algebra).
temAula(markin,linguagem_de_software).
temAula(markin,software).

temAula(giggio,algebra).
temAula(giggio,linguagem_de_programacao).
temAula(giggio,software).
temAula(giggio,engenharia_de_software).

temAula(andrei,algebra).
temAula(andrei,linguagem_de_programcao).
temAula(andrei,softwate).
temAula(andrei,engenharia_de_software).

temAula(pedrinho,algebra).
temAula(pedrinho,linguagem_de_programacao).
temAula(pedrinho,software).
temAula(pedrinho,engenharia_de_software).

para(X,Y):-
    ministra(X,Y);
    temAula(X,Y).
