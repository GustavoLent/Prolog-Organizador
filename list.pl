:- dynamic lista/1.
lista([a,b,c,d]).

adiciona(X,L) :- append(L, X, NovoL),
retract(lista(L)), asserta(lista(NovoL)).