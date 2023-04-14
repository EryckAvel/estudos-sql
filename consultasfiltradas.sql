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

SELECT * FROM aluno
WHERE idade = 16;
