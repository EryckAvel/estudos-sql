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
	COUNT(c.id) numero_cursos
FROM aluno a
JOIN aluno_curso ac ON ac.aluno_id = a.id
JOIN curso c ON  c.id = ac.curso_id
JOIN categoria c2 ON c2.id = c.categoria_id
GROUP BY 1,2
ORDER BY numero_cursos DESC
LIMIT 1;

-- relatorio que busca o aluno que mais realiza cursos

-- RELATORIO DE CURSO MAIS REQUISITADO --

SELECT 
	c.nome as curso,
	COUNT(ac.aluno_id) as numero_alunos
FROM curso c
JOIN aluno_curso ac ON ac.curso_id = c.id
GROUP BY 1
ORDER BY numero_alunos DESC;

