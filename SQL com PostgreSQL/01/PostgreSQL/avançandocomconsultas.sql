-- AVANÇANDO COM CONSULTAS --

-- OREDENANDO CONSULTAS --

DROP TABLE funcionarios;
CREATE TABLE funcionarios(
    id SERIAL PRIMARY KEY,
    matricula VARCHAR(10),
    nome VARCHAR(255),
    sobrenome VARCHAR(255),
		salario NUMERIC(10,2)
);


INSERT INTO funcionarios (matricula, nome, sobrenome, salario) VALUES ('M001', 'Diogo', 'Mascarenhas', 1000.00);
INSERT INTO funcionarios (matricula, nome, sobrenome, salario) VALUES ('M002', 'Vinícius', 'Dias', 1500.00);
INSERT INTO funcionarios (matricula, nome, sobrenome, salario) VALUES ('M003', 'Nico', 'Steppat', 1300.00);
INSERT INTO funcionarios (matricula, nome, sobrenome, salario) VALUES ('M004', 'João', 'Roberto', 2000.00);
INSERT INTO funcionarios (matricula, nome, sobrenome, salario) VALUES ('M005', 'Diogo', 'Mascarenhas', 1000.00);
INSERT INTO funcionarios (matricula, nome, sobrenome, salario) VALUES ('M006', 'Alberto', 'Martins', 2500.00);

SELECT * FROM funcionarios;

SELECT * FROM funcionarios
ORDER BY nome;

SELECT * FROM funcionarios
ORDER BY nome,matricula DESC;

SELECT * FROM funcionarios
ORDER BY 4;	

SELECT * FROM funcionarios
ORDER BY 4 DESC, nome DESC, 2 ASC;

-- LIMITANDO AS CONSULTAS --

SELECT * FROM funcionarios;

SELECT * FROM funcionarios LIMIT 5;

SELECT * FROM funcionarios
ORDER BY ID
LIMIT 5
OFFSET 1;

-- OFFSET : DIZER A TUPLA QUE DESEJA PULAR NO CASO SERIA A LINHA DE ID 1

-- FUNÇÕES DE AGREGAÇÕES -- 

-- COUNT - Retorna a quantidade de registros
-- SUM -   Retorna a soma dos registros
-- MAX -   Retorna o maior valor dos registros
-- MIN -   Retorna o menor valor dos registros
-- AVG -   Retorna a média dos registros

SELECT 
	COUNT(id) AS "Funcionarios",
	SUM(salario) AS "Soma dos Ids",
	MAX(salario) AS "Maior salario",
	MIN(salario) AS "Menos salario",
	ROUND(AVG(salario)) AS "Media dos salarios"
FROM funcionarios;

-- AGRUPAMENTO DE CONSULTAS --

SELECT DISTINCT nome FROM funcionarios
ORDER BY nome;

SELECT * FROM curso;

UPDATE curso
SET nome = 'JAVA'
WHERE nome LIKE 'Java';


SELECT 
	nome,
	sobrenome,
	COUNT(id)
FROM funcionarios
GROUP BY nome, sobrenome
ORDER BY nome

SELECT 
	c.nome,
	COUNT(a.id)
FROM aluno a
JOIN aluno_curso ac ON a.id = ac.aluno_id
JOIN curso c ON c.id = ac.curso_id
GROUP BY c.nome
ORDER BY c.nome;

-- FILTRANDO CONSULTAS AGREGADAS --

SELECT * FROM aluno;
SELECT * FROM aluno_curso;
SELECT * FROM curso;

SELECT 
	c.nome,
	COUNT(a.id)
FROM curso c
LEFT JOIN aluno_curso ac ON ac.curso_id = c.id
LEFT JOIN aluno a ON a.id = ac.aluno_id
GROUP BY 1
	HAVING COUNT(a.id) = 0;


SELECT nome, COUNT(id)
FROM funcionarios
GROUP BY nome
HAVING COUNT(id) > 1;
























