--USE Vendas - Muda o banco que vai ser utilizado;

-- DROP TABLE Cliente -- EXCLUI O BANCO DE DADOS;
--CREATE DATABASE - CRIA-SE UM BANCODE DADOS;


CREATE TABLE Cliente(
	id_cliente int PRIMARY KEY,
	nome varchar(50) NOT NULL,
	sobrenome varchar(50) NOT NULL
);

--CONSTRAINT (FK/Restrição) nome TIPO_RESTRICAO (COLUNA)
--REFEREMCES TABELA (COLUNA)
CREATE TABLE Pedido
(
	
	id_pedido int primary  key,
	id_cliente int not null,
	valor decimal(10,2) not null,
	descricao varchar(200) null,
	--restricao nome_da_restricao FK    --coluna que representa FK
	CONSTRAINT fk_id_pedido FOREIGN KEY (id_cliente)
	REFERENCES Cliente(id_cliente)
	--referencia do FK_TABELA (Coluna)
	
);
--COMANDO PARA CONSTRUIR A ESTRUTURA
EXEC sp_help 'PEDIDO';

--Adiciona uma nova coluna dentro da Tabela Selecionada.
ALTER TABLE Cliente ADD Email varchar(100);

