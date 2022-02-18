printa_eventos([]).
printa_eventos([A | B]) :-
  format('Evento: ~w\t~n', A),
  printa_eventos(B).

rotina(ListaEventos, I, Roteiro, MaxDuracao, Sum) :-
  length(ListaEventos, Length),
  I == Length ; Sum >= MaxDuracao,!,
  printa_eventos(Roteiro).

% Nome = N
% Duracao = D
% Roteiro = R
% NewRoteiro = Q
% TempList = T
% Resto = Z
% NewSum = Y
rotina(ListaEventos, I, Roteiro, MaxDuracao, Sum) :- 
    Sum < MaxDuracao, % Se soma < max duracao, vai adicionar eventos em Roteiro
    (
        nth1(I, ListaEventos, evento(Name, Duracao)), % pega primeiro item da ListaEventos       
        E = evento(Name, Duracao),
        Y is (Sum + Duracao), % 4 3
        Y =< MaxDuracao ->
        (
          % Add event to Roteiro
          findall(evento(Name, Duracao), evento(Name, Duracao), T),
          append(Roteiro, T, Q), % Adiciona em NewRoteiro
          rest(ListaEventos, 2, Z),
          rotina(Z, I, Q, MaxDuracao, Y)
        );
        % Call function to next event in position
        Next is (I + 1),
        rotina(ListaEventos, Next, Roteiro, MaxDuracao, Sum)
    ). 


roteiro(MaxDuracao) :- 
  findEvent(MaxDuracao, L), 
  R = [],
  rotina(L, 1, R, MaxDuracao, 0).
