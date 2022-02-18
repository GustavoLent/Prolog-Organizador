% Manipulação de eventos
% Insere evento no banco de dados e atualiza arquivo
appendEvent(Name, Duration):-
    assertz(
        evento(Name,Duration)
    ),
    updateDatabase().

% Remove evento do banco de dados e atualiza arquivo
removeEvent(Name, Duration):-
    retract(
    evento(Name,Duration)
    ),
    updateDatabase().

% Abre arquivo events_database com permissão de escrita e insere o banco de dados evento
updateDatabase() :-
    tell('events_database.pl'),
    listing(evento),
    told.


% Lista eventos que possuem duração menor ou igual ao MaxDuration
findEvent(MaxDuration, L) :- 
    findall(evento(Name, Duration), (evento(Name, Duration), Duration =< MaxDuration), L).
