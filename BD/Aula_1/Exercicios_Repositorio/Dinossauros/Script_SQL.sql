CREATE TABLE Dinossauros 
( 
 idDinossauro INT PRIMARY KEY, 
 nome varchar(50) NOT NULL,  
 pais VARCHAR(10),  
 toneladas INT,  
 ano_descoberta INT,  
 descobridor VARCHAR(60),  
 idEras INT,  
 idGrupos INT  
); 

CREATE TABLE Eras 
( 
 idEras INT PRIMARY KEY,  
 nome VARCHAR(30) NOT NULL,  
 ano_inicio INT,  
 ano_fim INT  
); 

CREATE TABLE Grupos 
( 
 idGrupos INT PRIMARY KEY,  
 nome VARCHAR (40) NOT NULL  
); 

ALTER TABLE Dinossauros ADD FOREIGN KEY(idEras) REFERENCES Eras (idEras);
ALTER TABLE Dinossauros ADD FOREIGN KEY(idGrupos) REFERENCES Grupos (idGrupos);

insert into Eras values (1, 'Cretáceo', 145, 66);
insert into Eras values (2, 'Jurássico', 201, 145);

insert into Grupos values (1, 'Anquilossauros');
insert into Grupos values (2, 'Ceratopsídeos');
insert into Grupos values (3, 'Estegossauros');

insert into Dinossauros values (1, 'Saichania', 'Mongólia', 4, 1977, 'Maryanska', 1, 1);
insert into Dinossauros values (2, 'Tricerátops', 'Canadá', 6, 1887, 'John Bell Hatcher', 1, 2);
insert into Dinossauros values (3, 'Kentrossauro', 'Tanzânia', 2, 1909, 'Cientistas Alemães', 2, 3);

