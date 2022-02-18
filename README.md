# Organizador de eventos em Prolog #

Projeto desenvolvido para a disciplina **Linguagens de Programação Não Convencionais**, ministrada pelo [Professor Dr. Thiago Gottardi](https://bv.fapesp.br/pt/pesquisador/104729/thiago-gottardi/), durante o sexto semestre da graduação em [Bacharelado em Ciências da Computação na Unesp de Rio Claro](https://igce.rc.unesp.br/#!/departamentos/demac/pagina-do-curso-de-bcc/home/).

Este projeto tem como função atuar como um pequeno sistema capaz de agendar eventos em Prolog.

# Funcionalidades #

## Iniciar ##
* Para abrir o projeto
```
swipl -s main.pl
```

* Para carregar os arquivos
```
init.
```

* Para exibir o mês de fevereiro
```
calendario.
```

* Para adicionar um evento ao banco de dados (e salvar arquivo)
```
appendEvent("nomeDoEvento", 2). % 2 = Duração em horas
```

* Para remover um evento do banco de dados (e salvar arquivo)
```
removeEvent("nomeDoEvento", 2).
```

* Para filtrar eventos com duração menor que valor desejado
```
findEvent(4, Result).
```

* Para exibir um roteiro que encaixe as durações do evento em uma máxima duração de horas
```
roteiro(6).
;
```
OBS: Uma resposta true é printada como primeira resposta na função roteiro, mas se você apertar ; o resultado aparecerá

## Alunos ##
* [Bruna Felix](https://github.com/BrunaFelix)
* [Caio Borghi](https://github.com/CB0rghi)
* [Guilherme Henrique Jardim](https://github.com/ghjardim)
* [Gustavo Lima Lent](https://github.com/GustavoLent)
* [José Fernandes Russino](https://github.com/z3fernandes)
