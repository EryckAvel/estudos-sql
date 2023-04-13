-- OPERAÇÕES DE CRUD --

-- INSERINDO DADOS NA TABELA --

INSERT INTO aluno (nome,cpf,observacao,idade,dinheiro,altura,ativo,data_nascimento,hora_aula,cadastro)
VALUES('Nicolas Calisto Avelino','93255621119','Segundo insert no banco de dados',18,0.50,1.80,true,'2005/02/10','01:10:00','2023/04/13 13:20:00');	

SELECT * FROM aluno;

-- EX001

CREATE TABLE professor(
	id SERIAL,
	matricula VARCHAR(10),
	nome VARCHAR(255)
);

INSERT INTO professor (matricula, nome)
VALUES('MT001','Maria Eduarda de Almeida Barbosa');

SELECT * FROM professor;

-- ATUALIZAR DADOS NA TABELA -- 

UPDATE aluno
SET nome = 'Nicolas Calisto Avelino', cpf = '93255621119', observacao = 'Atualizando um dado', idade = 15, dinheiro = 1.00 , altura = 1.70, ativo = false
WHERE id = 2;

-- EX002

CREATE TABLE funcionarios(
	id SERIAL,
	percentual_inss REAL,
	salario NUMERIC (10,2)
);

INSERT INTO funcionarios(salario)
VALUES
(2000.00),(3000.00),(3500.00),(4000.00),(7000.00);

SELECT * FROM funcionarios;

UPDATE funcionarios SET percentual_inss = 0.14
WHERE salario > 3134.21 AND salario<6101.06;

-- DELETANDO DADOS NA TABELA -- 

SELECT * FROM aluno WHERE id = 1;

DELETE FROM aluno
WHERE id = 1;









