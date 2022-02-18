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

% Retorna resto de lista
% Com source sendo a lista, N a posição de corte e L o resultado
rest(Src,N,L) :- findall(E, (nth1(I,Src,E), I >= N), L).
