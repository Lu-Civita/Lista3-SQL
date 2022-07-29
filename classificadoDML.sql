USE db_classificado;

INSERT INTO tb_usuarios
VALUES 
(11, 'Cachorro', 'CãoBranco', '123', 'AnaLu', 'Imagem1'),
(22, 'Gato', 'BichanoLaranja', '1234', 'Tania', 'Imagem2'),
(33, 'Onça', 'OnçaPintada', '12345', 'Thais', 'Imagem3');

INSERT INTO tb_anuncios
VALUES
(1, 'LojaPet', 'Pet Shop', '1139041687', 'Imagem Nova', '12-02-2000', 11),
(2, 'LojaVet', 'Loja Veterinária', '1139015073', 'Imagem Atual', '14-04-2002', 22),
(3, 'LojaAdoçãoPet', 'Loja de Adoção de Pets', '11971890833', 'Imagem1 Antiga', '18-08-2008', 33);

SELECT * FROM tb_usuarios;
SELECT * FROM tb_anuncios;

SELECT pessoa, usuario FROM tb_usuarios;

SELECT * FROM tb_anuncios
WHERE Descricao LIKE '%pet%';

SELECT * FROM tb_usuarios
WHERE Id BETWEEN 20 AND 35;

SELECT * FROM tb_anuncios
WHERE tb_anuncios.Descricao IN ('Loja Veterinária', 'Loja de Adoção de Pets');