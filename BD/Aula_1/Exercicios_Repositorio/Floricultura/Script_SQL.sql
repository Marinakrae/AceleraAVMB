CREATE TABLE Cliente 
( 
 rg INT PRIMARY KEY,  
 nome VARCHAR(50) NOT NULL,  
 telefone INT NOT NULL,  
 endereco VARCHAR(100),  
); 

CREATE TABLE Produto 
( 
 idProduto INT PRIMARY KEY,  
 nome VARCHAR(50) NOT NULL,  
 tipo VARCHAR(20) NOT NULL,  
 preco FLOAT NOT NULL,  
 qtd_estoque INT NOT NULL,  
); 

CREATE TABLE Venda 
( 
 idVenda INT PRIMARY KEY,  
 dt_venda DATE NOT NULL,  
 valor_total FLOAT NOT NULL,  
 idCliente INT,  
); 

CREATE TABLE Venda_Produtos 
( 
 idProduto INT NOT NULL,  
 idVenda INT,  
 UNIQUE (idProduto: FK)
); 

ALTER TABLE Venda ADD FOREIGN KEY(idCliente) REFERENCES Cliente (idCliente)
ALTER TABLE Venda_Produtos ADD FOREIGN KEY(idProduto) REFERENCES Produto (idProduto)
ALTER TABLE Venda_Produtos ADD FOREIGN KEY(idVenda) REFERENCES Venda (idVenda)
