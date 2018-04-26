#language:pt
#utf-8 
 
Funcionalidade: 
Eu como aluna Dojo
Quero criar, ler e editar um post 
Para concluir a formação nste Dojo

@post
Cenário: requisição post criação de livro
 #Dado que quero criar um post
 Quando realizar a requisição post
	| title 		| Livro Dom Casmurro				|
	| description	| teste@inmetrics.com.br			|
	| page count	| 256								|
	| excerpt		| Sumário resumido					|
	| publishdate	| 2017-06-15T13:00:00.549505+00:00	|
 Então receberei um Json de response

@get
Cenário: requisição get leitura de livro
 #Dado que tenho um post a ler
 Quando requisitar via API leitura livro
 Então  receberei um Json com a leitura do livro

@alterar
Cenário: requisição para alteração de livro
 Dado que tenho um post a alterar
 Quando requisitar put a alteração de um livro
 Então receberei um Json com a alteração proposta