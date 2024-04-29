/**
UVV Knowledge base
*/
estudante(laura).
estudante(vitoria).
estudante(joyce).
estudante(marcos).

professor(wagner).
professor(marcelo).

estuda(laura, linguagens_de_programacao).
estuda(joyce, linguagens_de_programacao).
estuda(vitoria, linguagens_de_programacao).
estuda(laura, arquitetura_de_computadores).

ministra(wagner, linguagens_de_programacao).
ministra(marcelo, arquitetura_de_computadores).
ministra(wagner, software_web).

monitora(marcos, linguagens_de_programacao).

auxilia(X,Y):-
      monitora(X,D),

      estuda(Y,D).
        
e_aluno_de(X,Y) :-
         estuda(X,D),
         ministra(Y,D).
