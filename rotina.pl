
%organiza(Evento, Roteiro, PrimeiroDia, ÚltimoDia, PrimeiraHora, ÚltimaHora).
%rotina(Evenetos, Roteiro, 9)
% rotina([], Roteiro, MaxDuracao, Sum)

%rotina(findEventos(9, L), Roteiro, 9, 0, 0)

% findEventos(Lista, Filtro(MaxDur), L)
% 
rotina([], Roteiro, MaxDuracao, Sum).

rotina(ListaEventos, Roteiro, MaxDuracao, Sum, Resultado) :- 
    format('Sum: ~a; MaxDuracao: ~a ~n', [Sum, MaxDuracao]),
    Sum < MaxDuracao,
    format('Passou! Sum: ~a, MaxDuracao ~a ~n', [Sum, MaxDuracao]),
    (
        nth1(1, ListaEventos, evento(Name, Duracao)),       %aqui a gente tem o Duration // eventos[0] = Duracao 4,
        format('Duracao, ~a ~n', Duracao),

        

        append(Roteiro, [Name, Duracao], NewRoteiro),
        format('depois de append ~n'),

        rest(ListaEventos, 2, Resto),
        format('depois de rest ~n'),

        NewSum is (Sum + Duracao),
        format('depois de NewSum ~n'),

        % format('NewSum, ~a', NewSum),
        % nl,
        format('vai chamar rotina ~n'),
        rotina(Resto, NewRoteiro, MaxDuracao, NewSum)
    ). 

fun(Num) :- 
    Num < 5,
    (
        format('Num, ~a ~n', Num),

        nth1(1, ListaEventos, evento(Name, Duracao)),       %aqui a gente tem o Duration // eventos[0] = Duracao 4,
        format('Duracao, ~a ~n', Duracao),

        Next is Num + 1,
        format('Next, ~a', Next),
        nl,
        fun(Next)
    ).
    %eventos[0](Nome, Duracao)
    %rotina(Eventos[I+1, N], Roteiro, MaxDuracao, Duracao + Sum, I + 1)    
    % rotina (Eventos, R, 9)
    %Resto is ListaEventos[_|Resto]
    %rotina(ListaEventos[1..n], Roteiro, MaxDuracao, ListaEventos[0].Duracao + Sum)


% banheiro