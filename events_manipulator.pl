% Manipulação de eventos
appendEvent(Name, Duration):-
    assertz(
        evento(Name,Duration)
    ),
    updateDatabase().

removeEvent(Name, Duration):-
    retract(
    evento(Name,Duration)
    ),
    updateDatabase().

updateDatabase() :-
    tell('events_database.pl'),
    listing(evento),
    told.

rest(Src,N,L) :- findall(E, (nth1(I,Src,E), I >= N), L).

findEvent(MaxDuration, L) :- 
    findall(evento(Name, Duration), (evento(Name, Duration), Duration =< MaxDuration), L).
