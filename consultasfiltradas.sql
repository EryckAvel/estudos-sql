-- CONSULTA COM FILTROS --

-- SELECIONAR COLUNAS DA TABELA --

SELECT * FROM aluno;

SELECT nome FROM aluno;

SELECT nome AS "Nome do Aluno",
	idade,
	cpf,
	data_nascimento AS nascimento
FROM  aluno;


-- FILTROS PRA CAMPOS TIPO TEXTO --

SELECT * FROM aluno;

INSERT INTO aluno (nome)
VALUES ('ALEX'), ('MARTA'), ('DUDA')

SELECT * FROM aluno
WHERE nome = 'ALEX'

SELECT * FROM aluno
WHERE nome LIKE '%AL%'

-- FILTRANDO OUTROS TIPOS DE DADOS --

SELECT * FROM aluno 
WHERE cpf IS NOT NULL OR data_nascimento IS NULL;

SELECT * FROM aluno;

UPDATE aluno
SET ativo = true
WHERE id IN (5,3)

UPDATE aluno 
SET ativo = false
WHERE ativo IS NULL;

SELECT * FROM aluno
WHERE idade BETWEEN 15 AND 40;

SELECT * FROM aluno
WHERE ativo = true;

SELECT * FROM aluno
WHERE ativo = false;

-- FILTRANDO USANDO OPERADORES LOGICOS --

-- AND E OR --

SELECT * FROM aluno 
WHERE ativo = true AND idade >= 20

SELECT * FROM aluno 
WHERE ativo = false OR idade >= 20






