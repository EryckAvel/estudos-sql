	-- CRIANDO VIEWS -- 

	-- ENTENDENDO CONCEITOS

	-- SAIR DISSO

	SELECT 
		categoria
	FROM (
		SELECT 
			ca.nome AS categoria,
			COUNT(c.id) AS numero_cursos
		FROM categoria ca
		JOIN curso c ON c.categoria_id = ca.id
		GROUP BY categoria
	) AS categoria_curso
	WHERE numero_cursos > 1;

	-- PARA ISSO

	SELECT 
		categoria
	FROM categoria_curso
	WHERE numero_cursos > 1;

	-- CRIANDO UMA VIEW

	CREATE VIEW vw_cursos_por_categoria AS
	SELECT 
		ca.nome AS categoria,
		COUNT(c.id) AS numero_cursos
	FROM categoria ca
	JOIN curso c ON c.categoria_id = ca.id
	GROUP BY categoria;

	SELECT * FROM vw_cursos_por_categoria;

	SELECT 
		categoria
	FROM vw_cursos_por_categoria
	WHERE numero_cursos > 1;

	SELECT * FROM categoria;

	CREATE VIEW vw_cursos_frontend AS
	SELECT 
		nome
	FROM curso
	WHERE categoria_id = 1;

	SELECT * FROM vw_cursos_frontend;

	-- TRABALHANDO MAIS COM AS VIEWS

	INSERT INTO curso (nome, categoria_id) VALUES ('JAVA', 1)

	SELECT * FROM vw_cursos_frontend WHERE nome LIKE 'JA%'

	SELECT c.id, vc.*
	FROM vw_cursos_por_categoria vc
	JOIN categoria c ON c.nome = vc.categoria























 