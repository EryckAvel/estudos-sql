-- USANDO FUNÇÕES --

-- FUNÇÕES DE STRING 

-- JUNTAR STRINGS 

SELECT (nome || ' ' || sobrenome) AS nome_completo FROM aluno;

SELECT CONCAT('Eryck', ' ', NULL)

-- EXISTES OUTRAS FUNÇÕES PARA STRINGS QUE PODEM SER PESQUISADAS

-- EX:

SELECT UPPER('eryck'); -- COLOCA TUDO EM CAIXA ALTA
SELECT LOWER('NICOLAS'); -- COLOCA TUDO EM CAIXA BAIXA

-- FUNÇÕES DE DATA --

SELECT
	(nome || ' ' || sobrenome) AS nome_completo,
	datanascimento as data_nascimento,
	NOW()::DATE AS data_atual,
	(NOW()::DATE - datanascimento)/365 AS idade,
	AGE(datanascimento) as idade_nova,
	EXTRACT(YEAR FROM AGE(datanascimento)) as idade_ano
FROM aluno;

-- FUNCÕES MATEMATICAS -- 

SELECT 
	10+20 AS soma,
	10-20 AS subtracao,
	10/20 AS divisao,
	10*20 AS multiplicacao,
	FACTORIAL(5) AS fatorial,
	|/25 AS raiz_quadrada,
	||/25 AS raiz_cubica,
	2 ^ 3 AS exponencial,
	5 % 4 AS modulo;

SELECT 
	PI() AS valor_de_pi,
	@ -12345675678 AS valor_absoluto,
	DIV(10/20) AS divisao,
	

-- CONVERSÕES DE DADOS --

SELECT TO_CHAR(NOW(), 'DD/MONTH/YYYY');

SELECT TO_CHAR(128::REAL, '999D99');































