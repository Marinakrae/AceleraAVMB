create table Editora (
	id integer constraint pk_editora primary key,
	nome varchar (50) not null
);

create table Categoria (
	id integer constraint pk_categoria primary key,
	tipo_categoria varchar (50) not null
);

create table Autor (
	id integer constraint pk_autor primary key,
	nome varchar (50) not null,
	nacionalidade varchar (50) not null
);

create table Livro (
	isbn bigint constraint pk_isbn primary key,
	titulo varchar (70) not null,
	ano_publicacao integer not null,
	fk_editora integer not null,
	fk_categoria integer not null,
	foreign key (fk_editora) references Autor (id),
	foreign key (fk_categoria) references Categoria (id)
);

create table LivroAutor (
	id integer constraint pk_livro_autor primary key,
	fk_livro integer not null,
	fk_autor integer not null,
	foreign key (fk_livro) references Livro (isbn),
	foreign key (fk_autor) references Autor (id)
);


insert into Editora values (1, 'Rocco');
insert into Editora values (2, 'Wmf Martins Fontes');
insert into Editora values (3, 'Casa da Palavra');
insert into Editora values (4, 'Belas Artes');
insert into Editora values (5, 'Matrix');

insert into Categoria values (1, 'Literatura Juvenil');
insert into Categoria values (2, 'Ficção Científica');
insert into Categoria values (3, 'Humor');

insert into Autor values (1, 'J.K. Rowling', 'Inglaterra');
insert into Autor values (2, 'Clive Staples Lewis', 'Inglaterra');
insert into Autor values (3, 'Affonso Solano', 'Brasil');
insert into Autor values (4, 'Marcos Piangers', 'Brasil');
insert into Autor values (5, 'Ciro Botelho - Tiririca', 'Brasil');
insert into Autor values (6, 'Bianca Mól', 'Brasil');

insert into Livro values (8532511015, 'Harry Potter e A Pedra Filosofal', 2000, 1, 1);
insert into Livro values (9788578270698, 'As Crônicas de Nárnia', 2009, 2, 1);
insert into Livro values (9788577343348, 'O Espadachim de Carvão', 2013, 3, 2);
insert into Livro values (9788581742458, 'O Papai é Pop', 2015, 4, 3);
insert into Livro values (97885677674534, 'Pior Que Tá Não Fica', 2015, 5, 3);
insert into Livro values (6676776677676, 'Garota Desdobrável', 2015, 3, 1);
insert into Livro values (8534556788767, 'Harry Potter e o priosioneiro de Azkaban', 2000, 1, 1);

insert into LivroAutor values (1, 8532511015, 1);
insert into LivroAutor values (2, 9788578270698, 2);
insert into LivroAutor values (3, 9788577343348, 3);
insert into LivroAutor values (4, 9788581742458, 4);
insert into LivroAutor values (5, 97885677674534, 5);
insert into LivroAutor values (6, 6676776677676, 6);
insert into LivroAutor values (7, 8534556788767, 1);
