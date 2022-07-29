USE db_ecommerce;

INSERT INTO tb_usuarios
VALUES 
(500, 'Gretchen', 'Gret', '999', 'CurriculoGretchen'),
(550, 'Inês Brasil', 'IB', '666', 'CurriculoBrasil'),
(600, 'Jojo Todynho', 'Jojo', '969', 'CurriculoTodynho');

INSERT INTO tb_produtos
VALUES
(5, 'Caderno', 'Caderno Beyonce', '15.30', '8', 'Papelaria', 'FOTOCADERNO'),
(10, 'Blusa', 'Blusa Britney', '49.90', '6', 'Roupas', 'FOTOBLUSA'),
(15, 'Boné', 'Boné Nike', '79.90', '3', 'Fitness', 'FOTOBONÉ');

INSERT INTO tb_compras   
VALUES
(500, 5, '11-01-2001'),
(550, 10, '12-02-2002'),
(600, 15, '13-03-2003');

SELECT * FROM tb_usuarios;
SELECT * FROM tb_produtos;
SELECT * FROM tb_compras;

SELECT nome, documento FROM tb_usuarios;

SELECT * FROM tb_produtos
WHERE descricao LIKE '%yonce%';

SELECT * FROM tb_usuarios
WHERE Id BETWEEN 450 AND 580;

SELECT * FROM tb_produtos
WHERE tb_produtos.categoria IN ('Papelaria', 'Roupas');