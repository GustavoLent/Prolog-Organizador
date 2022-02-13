diasSemana(1, terça).
diasSemana(2, quarta).
diasSemana(3, quinta).
diasSemana(4, sexta).
diasSemana(5, sábado).
diasSemana(6, domingo).
diasSemana(7, segunda).

diasSemana(Dia, Nome) :-
    (Dia =< 28),
    OutroDiaMesmoDiaSemana is Dia - 7,
    diasSemana(OutroDiaMesmoDiaSemana, Nome).

imprimeDia(N,Max) :-
    (
        (N =< Max),
        diasSemana(N, Nome),
        format("Dia: ~d: ~a;~n", [N,Nome]),
        Proximo is N + 1,
        imprimeDia(Proximo,Max)
    ); 
    true.

calendario :-
    write("Fevereiro de 2022"), 
    nl,
    imprimeDia(1,28).