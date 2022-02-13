:- dynamic lista/1.
lista([a,b]).

adiciona(X,L) :-
    append(L, X, NovoL),
    retract(lista(L)),
    asserta(lista(NovoL)).

adiciona(X) :-
    lista(L),
    append(L, X, NovoL),
    retract(lista(L)),
    asserta(lista(NovoL)).