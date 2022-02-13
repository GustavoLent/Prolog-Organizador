estrutura
data(7, janeiro,2022) = X.

X= data(7, janeiro, 2022).

X = data(7, janeiro, 2022) = data(Dia, Mes,Ano)

-alinhado, para acessar variável 

evento(data(7, janeiro, 2022),"Primeira aula") = evento(data(Dia,Mes,Ano),Nome).

- converte a lista para String

evento(data(7, janeiro, 2022),"Primeira aula") = evento(data(Dia,Mes,Ano),Nome), string_to_list(Nome, MinhaListaNome).

-------------------------------------------

evento(X,Y), X = data(Dia,Mes,Ano), Y = Nome.

-----------------------------------------------------
Busca Eventos - FindALL

Arquivo de banco de dados

%nome do evento, duração
evento("Nome1", 1).
evento("Nome2", 2).
evento("Nome3), 3).

-------------------------------------------
Código

%retorna nome dos eventos da lista

findall(Nome, evento(Nome,Duração), L).

%retorna a duração dos eventos na lista

findall(Duração, evento(Nome,Duração), L).


%retorna os eventos

Evento = evento(_,_), findall(Evento, Evento, L).


--------------------------------------------------
Adicionar novo evento

-arquivo banco de dados

:- dynamic evento/2

%nome do evento, duração
evento("Nome1", 1).
evento("Nome2", 2).
evento("Nome3), 3).

- Código
assertz(evento("Nome4",4)).

--exclui evento da lista

retract(evento("Nome1",1)).
