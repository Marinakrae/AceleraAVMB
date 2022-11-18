CREATE TABLE Bebe 
( 
 cpf INT,  
 nome VARCHAR(n) NOT NULL,  
 dt_nasc DATE NOT NULL,  
 peso_nasc FLOAT NOT NULL,  
 altura FLOAT NOT NULL,  
 idMedico INT NOT NULL,  
 idMae INT NOT NULL,  
); 

CREATE TABLE Mae 
( 
 cpf INT PRIMARY KEY,  
 nome VARCHAR(n) NOT NULL,  
 endereco VARCHAR(n) NOT NULL,  
 telefone INT NOT NULL,  
 dt_nasc DATE NOT NULL,  
); 

CREATE TABLE Medico 
( 
 crm INT PRIMARY KEY,  
 nome VARCHAR(n) NOT NULL,  
 telefone INT NOT NULL,  
 especialidade VARCHAR(n) NOT NULL,  
); 

ALTER TABLE Bebe ADD FOREIGN KEY(idMedico) REFERENCES Medico (idMedico)
ALTER TABLE Bebe ADD FOREIGN KEY(idMae) REFERENCES Mae (idMae)
