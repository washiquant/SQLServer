CREATE DATABASE EXERCICIOS;
USE EXERCICIOS;
/*
 EXERCICIO 1 : **Exercício 1 — Qual comando DDL usar?**
Para cada situação, diga qual comando resolve (CREATE, ALTER ou DROP) e com qual complemento:

1. Criar o banco **Loja**.
2. Criar a tabela PRODUTO.
3. Guardar o estoque do produto, que ninguém lembrou de colocar.
4. O nome do produto não cabe em VARCHAR(50); precisa de VARCHAR(100).
5. Impedir preço negativo numa tabela que já existe.
6. A coluna **observacao** não é mais usada.
7. A tabela PRODUTO inteira não é mais necessária.
*/
-------------------------------------------------------------
CREATE DATABASE LOJA
CREATE TABLE PRODUTO(
    ESTOQUE_DO_PRODUTO INT NOT NULL,
    NOME VARCHAR(50) NOT NULL,
    PRECO DECIMAL (10,2) NOT NULL,
    OBSERVACAO VARCHAR (300)
    )

    ALTER TABLE  PRODUTO ALTER COLUMN ESTOQUE_DO_PRODUTO VARCHAR(100);
    ALTER TABLE PRODUTO ALTER COLUMN  NOME VARCHAR(100);
    ALTER TABLE PRODUTO ADD  CONSTRAINT CHK_PRECO_NEGATIVO CHECK( PRECO >= 0);
    ALTER TABLE PRODUTO DROP COLUMN OBSERVACAO;
    DROP TABLE PRODUTO;



/*Exercício 2 — Encontre os erros.** O script abaixo tem 5 erros. Encontre e corrija:

```sql*/
/*
CREATE TABLE PRODUTO (
    codigo INT NULL,
    descricao VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    CONSTRAINT PK_PRODUTO PRIMARY KEY (codigo),
);
CREATE TABLE VENDA (
    numero INT NOT NULL PRIMARY KEY,
    codigo_produto VARCHAR(10) NOT NULL,
    CONSTRAINT FK_VENDA_PRODUTO FOREIGN KEY (codigo_produto) REFERENCES PRODUTOS (codigo)
);
*/

CREATE TABLE PRODUTO (
    codigo INT NOT NULL PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    
);
CREATE TABLE VENDA (
    numero INT NOT NULL PRIMARY KEY,
    codigo_produto INT NOT NULL,
    CONSTRAINT FK_VENDA_PRODUTO FOREIGN KEY (codigo_produto) REFERENCES PRODUTO (codigo)
);
/*
**Exercício 3 — ALTER TABLE.** No banco Escola, escreva os comandos para:

1. Adicionar a coluna **cpf** CHAR(11) NULL em ALUNO.
2. Garantir que o cpf do aluno não se repita.
3. Aumentar o nome do curso para VARCHAR(120).
4. Garantir que a data_nascimento do aluno seja menor que a data de hoje.
5. Remover a coluna cpf.

*/
 ALTER TABLE ALUNO add CPF VARCHAR(100) NOT NULL;