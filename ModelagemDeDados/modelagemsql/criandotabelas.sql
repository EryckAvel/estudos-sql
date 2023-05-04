-- CRIANDO NOVO BANCO DE DADOS --

CREATE DATABASE clubedolivro;

-- CRIANDO TABELAS DO PROJETO --

CREATE TABLE livro(
	id_livro INT NOT NULL PRIMARY KEY,
	nome_livro VARCHAR(100) NOT NULL,
	autoria VARCHAR(100) NOT NULL,
	editora VARCHAR(100) NOT NULL,
	categoria VARCHAR(100) NOT NULL,
	preco VARCHAR(100) NOT NULL
); 


CREATE TABLE estoque(
	id_livro INT NOT NULL PRIMARY KEY,
	qtd_estoque INT NOT NULL
);


CREATE TABLE vendedor(
	id_vendedor INT NOT NULL PRIMARY KEY,
	nome_vendedor VARCHAR(100) NOT NULL
);

CREATE TABLE vendas(
	id_pedido INT NOT NULL PRIMARY KEY,
	id_vendedor INT NOT NULL REFERENCES vendedor (id_vendedor),
	id_livro INT NOT NULL REFERENCES livro (id_livro),
	qtd_vendida INT NOT NULL,
	data_venda DATE NOT NULL
);

-- ADICIONANDO RELACIONAMENTOS -- 

ALTER TABLE estoque ADD CONSTRAINT id_estoque_livro FOREIGN KEY (id_livro) REFERENCES livro (id_livro) ON UPDATE NO ACTION ON DELETE NO ACTION;

SELECT * FROM estoque;