:- dynamic evento/2.

evento("Aula LPNC", 4).
evento("Andar de Skate", 3).
evento("Andar de bike", 2).


%organiza(Evento, Roteiro, PrimeiroDia, ÚltimoDia, PrimeiraHora, ÚltimaHora).
% organiza([Primeiro|Resto], MaxDuracao, SumDuracao = 0)
% if(MaxDuracao <= 