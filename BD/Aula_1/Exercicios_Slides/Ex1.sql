#Crie uma tabela para armazenar seus livros

create table Livros (
	id_livro integer CONSTRAINT pk_id_livro PRIMARY KEY,
	titulo varchar(50),
	autor varchar(50),
	genero varchar(15),
	dt_aquisicao date,
	dt_publicacao date,
	editora varchar(50),
	num_paginas integer
);
