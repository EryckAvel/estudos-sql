-- PRATICANDO COMANDOS --

-- MOSTRANDO AS DIFERENTES FORMAS DE FAZER UM INSERT

-- EX001 

-- GERAL UM RELATORIO COM UMA RELAÇÃO DE ALUNOS

-- 1. TRAZER TODOS OS ALUNOS

SELECT * FROM aluno;

-- 2. TRAZER RELAÇÃO DE ALUNO COM CURSO

SELECT * FROM aluno a
JOIN aluno_curso ac ON ac.aluno_id = a.id
JOIN curso c ON  c.id = ac.curso_id;

-- 3. MELHORAR RESPOSTA DO RELATORIO

SELECT
	a.nome as nomealuno,
	a.sobrenome,
	a.datanascimento, 
	c.nome as curso,
	COUNT(c.id) numero_alunos
FROM aluno a
JOIN aluno_curso ac ON ac.aluno_id = a.id
JOIN curso c ON  c.id = ac.curso_id
GROUP BY 1,2,3,4
ORDER BY numero_alunos DESC;



