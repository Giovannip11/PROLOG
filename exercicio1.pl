nota(laura, linguagens_de_programacao,7.5).
nota(joyce, linguagens_de_programacao,8.2).
nota(vitoria,linguagens_de_programacao,5.5).
nota(marcos,linguagens_de_programacao,6.0).

frequencia(laura,linguagens_de_programacao,90).
frequencia(joyce,linguagens_de_programacao,65).
frequencia(vitoria,linguagens_de_programacao,50).
frequencia(marcos,linguagens_de_programacao,95).


aprovado(X, Y) :-
    nota(X, Y, Z), Z>=7 .
