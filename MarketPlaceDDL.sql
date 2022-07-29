CREATE DATABASE db_Marketplace;

USE db_Marketplace;

CREATE TABLE tb_Usuarios(
	Id INT NOT NULL PRIMARY KEY,
	Nome VARCHAR(45) NOT NULL,
	Usuario VARCHAR(45) NOT NULL,
	Senha VARCHAR(100) NOT NULL,
	Tipo VARCHAR(45) NOT NULL,
	Foto VARCHAR(100) NOT NULL
)
GO

CREATE TABLE tb_Categorias(
	Id INT NOT NULL PRIMARY KEY,
	Categoria VARCHAR(45) NOT NULL
)
GO

CREATE TABLE tb_Produtos(
	Id INT NOT NULL PRIMARY KEY,
	Produto varchar(45) NOT NULL,
	Descricao VARCHAR(100) NOT NULL,
	Valor FLOAT NOT NULL,
	Url_imagem VARCHAR(100) NOT NULL,
	FK_Criador INT NOT NULL,
	FK_Categoria INT NOT NULL,
	FOREIGN KEY (FK_Criador) REFERENCES tb_Usuarios (Id),
	FOREIGN KEY (FK_Categoria) REFERENCES tb_Categorias (Id)
)
GO

CREATE TABLE tb_Compras (
	Id INT NOT NULL PRIMARY KEY,
	Produto VARCHAR (45) NOT NULL,
	Data DATE NOT NULL,
	FK_Comprador INT NOT NULL,
	FK_Produto INT NOT NULL,
	FOREIGN KEY (FK_Comprador) REFERENCES tb_Usuarios (Id),
	FOREIGN KEY (FK_Produto) REFERENCES tb_Produtos (Id)
)
GO