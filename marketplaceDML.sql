USE db_Marketplace;

INSERT INTO tb_Usuarios
VALUES 
(900, 'Samwise', 'Samwise Gamgee', '1020', 'Hobbit', 'Imagem1'),
(1000, 'Aragorn', 'AragornSonOfArathorn', '1030', 'Homem', 'Imagem2'),
(2000, 'Gandalf', 'GandalfTheGrey', '1040', 'Mago', 'Imagem3')
GO

INSERT INTO tb_Categorias
VALUES 
(11, 'Senhor dos Anéis: A Sociedade do Anel'),
(22, 'Senhor dos Anéis: As duas torres'),
(33, 'Senhor dos Anéis: O Retorno do Rei')
GO

INSERT INTO tb_Produtos
VALUES 
(1, 'Anel', 'Um Anel', 1000.0, 'Imagem1', 900, 11),
(2, 'Espada', 'Espada Arathorn', 2000.0, 'Imagem2', 1000, 22),
(3, 'Cajado', 'Cajado do Mago', 3000.0, 'Imagem3', 2000, 33)
GO

INSERT INTO tb_Compras
VALUES
(55, 'Anel', '2000-02-12', 900, 1),
(56, 'Espada', '2002-04-14', 1000, 2),
(57, 'Cajado', '2008-08-18', 2000, 3)
GO

SELECT * FROM tb_Produtos;
SELECT * FROM tb_Compras;

SELECT Nome, Usuario FROM tb_Usuarios;

SELECT * FROM tb_Categorias
WHERE Categoria LIKE '%senhor%';

SELECT * FROM tb_usuarios
WHERE Id BETWEEN 950 AND 3000;