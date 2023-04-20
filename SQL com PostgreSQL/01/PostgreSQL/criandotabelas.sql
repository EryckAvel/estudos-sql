-- CRIANDO TABELAS E TRABALHANDO COM RELACIONAMENTOS --

-- CRIANDO TABELAS COM PK --

DROP TABLE curso;
CREATE TABLE curso(
	--id INTEGER NOT NULL UNIQUE,
	id INTEGER PRIMARY KEY,
	nome VARCHAR(255) NOT NULL
);

INSERT INTO curso(id, nome)
VALUES (NULL,NULL);

INSERT INTO curso(id, nome)
VALUES (1,'Java'),(2,'HTML');

SELECT * FROM curso;

-- TRABALHANDO COM FK --

DROP TABLE aluno;

CREATE TABLE aluno(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL
);

INSERT INTO aluno (nome)
VALUES 
	('Eryck Calisto Avelino'),
	('Nicolas Calisto Avelino'),
	('Marta Maria Calisto Avelino'),
	('Alessando Avelino Cavalcante'),
	('Maria Eduarda de Almeida Barbosa')

SELECT * FROM aluno;
SELECT * FROM curso;

DROP TABLE aluno_curso;

CREATE TABLE aluno_curso(
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY(aluno_id, curso_id),
	FOREIGN KEY(aluno_id) 
	REFERENCES aluno (id),
	FOREIGN KEY(curso_id) 
	REFERENCES curso (id)
)

INSERT INTO aluno_curso(aluno_id, curso_id)
VALUES (1,1),(1,2),(2,1),(2,2);

INSERT INTO aluno_curso(aluno_id, curso_id)
VALUES (1,3);

SELECT * FROM aluno_curso;


-- CONSULTA COM RELACIONAMENTOS --

SELECT * FROM aluno;
SELECT * FROM curso;

SELECT  a.nome AS nome_aluno,
		c.nome AS nome_curso
	FROM aluno a
	JOIN aluno_curso ac ON ac.aluno_id = a.id
	JOIN curso c		ON c.id = ac.curso_id;
	
-- OUTROS JOINS --

INSERT INTO curso (id, nome) 
VALUES (3,'CSS');

SELECT * FROM aluno;
SELECT * FROM curso;

SELECT  *
	FROM aluno a
	LEFT JOIN aluno_curso ac ON ac.aluno_id = a.id
	LEFT JOIN curso c		ON c.id = ac.curso_id;

SELECT  *
	FROM aluno a
	RIGHT JOIN aluno_curso ac ON ac.aluno_id = a.id
	RIGHT JOIN curso c		ON c.id = ac.curso_id;

SELECT  *
	FROM aluno a
	FULL JOIN aluno_curso ac ON ac.aluno_id = a.id
	FULL JOIN curso c		ON c.id = ac.curso_id;
	
SELECT  *
	FROM aluno a
	CROSS JOIN curso C;




