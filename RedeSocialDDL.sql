CREATE DATABASE db_RedeSocial;

USE db_RedeSocial;

CREATE TABLE tb_usuarios(
	id INT NOT NULL PRIMARY KEY,
	nome VARCHAR (45) NOT NULL,
	usuario VARCHAR (45) NOT NULL,
	senha VARCHAR (100) NOT NULL,
	url_foto VARCHAR (100) NOT NULL,
	);
	   
CREATE TABLE tb_grupos(
	id INT NOT NULL PRIMARY KEY,
	grupo VARCHAR (45) NOT NULL,
	descricao VARCHAR (100) NOT NULL,
	url_imagem VARCHAR (100) NOT NULL,
	FK_Criador INT NOT NULL,
	FOREIGN KEY (FK_Criador) REFERENCES tb_usuarios (Id),
);

CREATE TABLE tb_postagem(
	id INT NOT NULL PRIMARY KEY,
	titulo VARCHAR (50) NOT NULL,
	descricao VARCHAR (1000) NOT NULL,
	imagem VARCHAR (100) NOT NULL,
	data_postagem VARCHAR (50) NOT NULL,
	FK_Criador INT NOT NULL,
	FK_Grupo INT NOT NULL,
	FOREIGN KEY (FK_Criador) REFERENCES tb_usuarios (Id),
	FOREIGN KEY (FK_Grupo) REFERENCES tb_grupos (Id),
);

CREATE TABLE tb_inscritos(
	data_inscritos VARCHAR (50) NOT NULL,
	FK_Usuarios INT NOT NULL,	
	FK_Grupo INT NOT NULL,
	FOREIGN KEY (FK_Usuarios) REFERENCES tb_usuarios (Id),
	FOREIGN KEY (FK_Grupo) REFERENCES tb_grupos (Id),
);
