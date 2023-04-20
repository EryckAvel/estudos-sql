-- CHAVES ESTRANGEIRAS E TIPOS --

-- INTRODUÇÃO & CHAVES ESTRANGEIRAS -- 

DROP TABLE aluno, curso, aluno_curso, categoria;

-- CRIAÇÃO DE NOVAS TABELAS

CREATE TABLE aluno(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	sobrenome VARCHAR(255) NOT NULL,
	datanascimento DATE NOT NULL
);

CREATE TABLE categoria(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL
);

CREATE TABLE curso(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	categoria_id INTEGER NOT NULL REFERENCES categoria(id)
);

CREATE TABLE aluno_curso(
	aluno_id INTEGER NOT NULL REFERENCES aluno(id),
	curso_id INTEGER NOT NULL REFERENCES curso(id),
	PRIMARY KEY(aluno_id, curso_id)
);

-- INSERINDO DADDOS DE TREINO

INSERT INTO aluno (nome, sobrenome, datanascimento)
VALUES 
	('Eryck','Calisto Avelino', '2003/03/30'),
	('Maria Eduarda', 'de Almeida Barbosa', '2004/08/17'),
	('Nicolas', 'Calisto Avelino', '2005/02/10');
	
INSERT INTO categoria (nome)
VALUES 
	('FRONTEND'),
	('BACKEND'),
	('BANCO DE DADOS');
	
INSERT INTO curso (nome, categoria_id)
VALUES
	('HTML & CSS', 1),
	('SPRING BOOT', 2),
	('SQL BASICO', 3),
	('JAVASCRIP', 1);
	
INSERT INTO aluno_curso (aluno_id, curso_id)
VALUES 
	(1,2),
	(1,3),
	(2,1),
	(3,4);
	

-- SELECIONANDO PARA VIZUALIZAR DADOS

SELECT * FROM aluno;
SELECT * FROM categoria;
SELECT * FROM curso;
SELECT * FROM aluno_curso;
































