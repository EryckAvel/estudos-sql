-- EXECUTANDO SUB CONSULTAS --

-- OPERADOR IN

SELECT * FROM curso;
SELECT * FROM categoria;

SELECT * FROM curso WHERE categoria_id = 1 OR categoria_id =2;

SELECT * FROM curso WHERE categoria_id IN (1,2);

SELECT * FROM curso WHERE categoria_id NOT IN (1,2);

-- UMA FORMA SIMPLES DE FILTRA UMA LISTA DE RESULTADOS

-- QUERIES ANINHADAS 

SELECT id FROM categoria WHERE nome NOT LIKE '% %';

SELECT * FROM curso WHERE categoria_id IN (1,2);

-- COMO JUNTAR ISSO, COM SUBQUERIE

SELECT * FROM curso WHERE categoria_id in
(
	SELECT id FROM categoria WHERE nome NOT LIKE '% %'
)


-- PERSONALIZANDO TABELAS

SELECT 
	ct.nome as categoria,
	COUNT(c.id) as numero_curso
FROM categoria ct
JOIN curso c on c.categoria_id = ct.id
GROUP BY 1;

SELECT 
	categoria,
	numero_curso
FROM(
	SELECT 
	ct.nome as categoria,
	COUNT(c.id) as numero_curso
	FROM categoria ct
	JOIN curso c on c.categoria_id = ct.id
	GROUP BY 1
) as categoria_curso
WHERE numero_curso > 1;


-- RESUMINDO USAMOS OS DADOS DE RETORNO DE OUTRO SQL PARA FAZER OUTRA CONSULTA SQL















