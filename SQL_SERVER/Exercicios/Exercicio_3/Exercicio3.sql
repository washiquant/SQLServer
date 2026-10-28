-- novo banco de dados.
CREATE DATABASE Escola;

USE Escola;

---Tabela 'pai'
CREATE TABLE ALUNO (
   matricula int primary key,
   nome varchar(50) not null,
   data_nascimento date not null,
   email varchar(100) not null,

   --CONSTRAINT (restricao)
   --nao aceitamos emails duplicados.
   --UQ_Aluno_Email nome da restricao
   --UNIQUE - unico
   --(email) coluna que recebe a restricao.
   CONSTRAINT UQ_Aluno_Email UNIQUE (email)

);

-- drop table professor

CREATE TABLE PROFESSOR(
    registro_professor int primary key,
    nome varchar(50) not null,
    email varchar(100) not null unique
);

CREATE TABLE CURSO (
    codigo_curso int primary key,    
    nome varchar(50) not null unique,
    carga_horaria smallint not null,
    registro_professor int not null,

    --aceita o registro apenas de a carga horaria for maior que 0
    CONSTRAINT ck_curso_carga CHECK ( carga_horaria > 0 ),

    CONSTRAINT fk_curso_professor 
                               FOREIGN KEY (registro_professor)
    REFERENCES PROFESSOR (registro_professor)
)

-- DROP TABLE MATRICULA

CREATE TABLE MATRICULA(

      matricula_aluno int not null primary key,
      codigo_curso int not null,

      --DEFAULT restricao padrao
      --GETDATE() busca horario atual do servidor
      data_matricula datetime  DEFAULT GETDATE(),

      CONSTRAINT fk_matricula_codigo_curso FOREIGN KEY (codigo_curso) 
      REFERENCES CURSO (codigo_curso)

)

CREATE TABLE ESPECIALIDADE_PROFESSOR(

     registro_professor int not null,
     especialidade varchar(50) not null,

     --duas colunas se tornam uma PK
     CONSTRAINT pk_especialidade_professor
     PRIMARY KEY ( registro_professor,especialidade),


     CONSTRAINT fk_especialidade_professor 
     FOREIGN KEY (registro_professor)
     REFERENCES PROFESSOR(registro_professor)

)
/*
**Exercício 3 — ALTER TABLE.** No banco Escola, escreva os comandos para:

1. Adicionar a coluna **cpf** CHAR(11) NULL em ALUNO.
2. Garantir que o cpf do aluno não se repita.
3. Aumentar o nome do curso para VARCHAR(120).
4. Garantir que a data_nascimento do aluno seja menor que a data de hoje.
5. Remover a coluna cpf.

*/
ALTER TABLE ALUNO ADD CPF CHAR(11) 
CONSTRAINT UQ_ALUNO_CPF UNIQUE (CPF)
ALTER TABLE ALUNO ALTER COLUMN nome varchar(120)
ALTER TABLE PRODUTO ADD CONSTRAINT CHK_DATA_NASCIMENTO CHECK (data_nascimento < GETDATE())
ALTER TABLE PRODUTO DROP COLUMN CPF