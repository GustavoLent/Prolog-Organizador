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