init:-
    consult('calendary.pl'),
    consult('events_database.pl'),
    consult('events_manipulator.pl'),
    consult('rotina.pl'),
    consult('list.pl').

clear:-
    tty_clear.

cls:-
    tty_clear.

quit:-
    halt.

exit:-
    halt.