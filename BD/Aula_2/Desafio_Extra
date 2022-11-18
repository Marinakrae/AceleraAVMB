--Exemplo Funcionários

create table funcionarios (
	codigo integer primary key,
	nome character varying(100) NOT NULL,
	email character varying(200) NOT NULL,
	telefone character(14) NOT NULL,
	profissao character varying(150) NOT NULL,
	salario real
)

create table funcionarios_auditoria (
	codigo_func int not null,
	data_alteracao date not null
)

--Criação da função que insere na tabela de auditoria
--o código do funcionário e a data de alteração
--da tabela Funcionários
create or replace function funcionario_log_func()
returns trigger as $$
begin
	insert into funcionarios_auditoria
	(codigo_func, data_alteracao)
	values
	(new.codigo, current_date);
	return new; --indica que nova linha sera inserida
end;
$$ language plpgsql;

--Criação da Trigger que informa que devemos executar
--a funcionario_log_func() toda vez que houverem 
--inserções ou atualizações na tabela Funcionários
create trigger log_trigger
after insert or update on funcionarios
for each row
execute procedure funcionario_log_func();

-------

--Exercicio

CREATE TABLE Produto
(
 cod_prod INT PRIMARY KEY,
 descricao VARCHAR(50) UNIQUE,
 qtde_disponivel INT NOT NULL DEFAULT 0
);

INSERT INTO Produto VALUES (1, 'Feijão', 10);
INSERT INTO Produto VALUES (2, 'Arroz', 5);
INSERT INTO Produto VALUES (3, 'Farinha', 15);

CREATE TABLE ItensVenda
(
 cod_venda  INT,
 id_produto int,
 qtde_vendida INT,
 FOREIGN KEY (cod_venda) REFERENCES Produto(cod_prod) ON DELETE CASCADE
);

CREATE OR REPLACE FUNCTION atualiza_estoque() RETURNS TRIGGER
AS
$$
DECLARE 
	qtde integer; --qtd disponível do produto em estoque
BEGIN
	select qtde_disponivel from Produto where cod_prod = new.id_produto into qtde;
	if qtde < new.qtde_vendida then
		raise exception 'Quantidade indisponível em estoque.';
	else
		update Produto set qtde_disponivel = qtde_disponivel - new.qtde_disponivel
		where cod_prod = new.id_produto;
	end if;
	return NEW;
END
$$ LANGUAGE plpgsql;

CREATE TRIGGER t_atualiza_estoque
BEFORE INSERT ON ItensVenda
FOR EACH ROW
EXECUTE PROCEDURE atualiza_estoque();

--Teste:
INSERT INTO ItensVenda VALUES (1, 1, 3);
INSERT INTO ItensVenda VALUES (2, 2, 5);
INSERT INTO ItensVenda VALUES (3, 1, 3);
INSERT INTO ItensVenda VALUES (4, 2, 6);
