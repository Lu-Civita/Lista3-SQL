CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_usuarios (
	Id INT NOT NULL PRIMARY KEY,
	Nome VARCHAR(45) NOT NULL,
	Usuario VARCHAR(45) NOT NULL,
	Senha VARCHAR(100) NOT NULL,
	Documento VARCHAR (45), 
);

CREATE TABLE tb_produtos (
	Id INT NOT NULL PRIMARY KEY,
	Produto VARCHAR(45) NOT NULL,
	Descricao VARCHAR (100) NOT NULL,
	Valor VARCHAR(45) NOT NULL,
	Estoque VARCHAR(45) NOT NULL,
	Categoria VARCHAR (45), 
	url_imagem VARCHAR(100) NOT NULL,
);

CREATE TABLE tb_compras (
	fk_criador INT NOT NULL,
	fk_produtos INT NOT NULL,
	Calendar VARCHAR(45) NOT NULL,
	FOREIGN KEY (fk_criador) REFERENCES tb_usuarios (Id),
	FOREIGN KEY (fk_produtos) REFERENCES tb_produtos (Id),
);
