CREATE DATABASE db_classificado1;

USE db_classificado;

CREATE TABLE tb_usuarios1 (
	Id INT NOT NULL PRIMARY KEY,
	Nome VARCHAR(45) NOT NULL,
	Usuario VARCHAR(45) NOT NULL,
	Senha VARCHAR(100) NOT NULL,
	Pessoa VARCHAR (45) NOT NULL, 
	url_imagem VARCHAR(100) NOT NULL,
);

CREATE TABLE tb_anuncios1 (
	Id INT NOT NULL PRIMARY KEY,
	Titulo VARCHAR(45) NOT NULL,
	Descricao VARCHAR(1000) NOT NULL,
	Contato VARCHAR(50) NOT NULL,
	url_imagem VARCHAR(100) NOT NULL,
	Calendar VARCHAR(45) NOT NULL,
	Fk_Criador INT NOT NULL,
	FOREIGN KEY (Fk_Criador) REFERENCES tb_usuarios (Id),
);

