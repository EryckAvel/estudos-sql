-- CRIAR E EXCLUIR UM BANCO DE DADOS --

-- CRIAR --

CREATE DATABASE alura;

-- EXCLUIR --

DROP DATABASE alura;

-- LEMBRANDO DA UTILIZAÇÃO DE DATA TYPES --
-- NUMERO : INTEGER, REAL, SERIAL, NUMERIC
-- TEXTO: VARCHAR, CHAR, TEXT
-- BOOLEAN
-- TEMPO : DATE, TIME, TIMESTAMP

-- CRIAR UMA TABELA --

CREATE TABLE aluno(
	id SERIAL, 
	nome VARCHAR(80),
	cpf CHAR(11),
	observacao TEXT,
	idade INTEGER,
	dinheiro NUMERIC(10,2),
	altura REAL,
	ativo BOOLEAN,
	data_nascimento DATE,
	hora_aula TIME,
	cadastro TIMESTAMP
)

SELECT * FROM aluno;

-- EX001

-- CRIAR TABELA DE EMPRESAS

CREATE TABLE empresa(
	id SERIAL,
	cnpj CHAR(14),
	razao_social VARCHAR(255),
	nome_social VARCHAR(255),
	data_abertura DATE
)

SELECT * FROM empresa;





















