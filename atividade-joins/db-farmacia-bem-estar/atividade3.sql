CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
categotia ENUM ("medicamento", "cosmético", "bebida", "alimentação", "outros") NOT NULL,
descricao VARCHAR(255)
);

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
categoria_id BIGINT,
nome VARCHAR(255) NOT NULL,
preco DOUBLE(6,2) NOT NULL,
quantidade_estoque INT NOT NULL,
codigo INT NOT NULL UNIQUE,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(categotia) 
VALUES ("medicamento"), ("cosmético"), ("bebida"), ("alimentação"), ("outros");

INSERT INTO tb_produtos (categoria_id, nome, preco, quantidade_estoque, codigo)
VALUES
(1, "dipirona", 21.99, 50, 11),
(2, "hidratante", 53.99, 15, 22),
(3, "energético", 7.50, 70, 33),
(4, "chocolate", 5.50, 30, 44),
(1, "buscopan", 25.50, 40, 55),
(2, "protetor solar", 153.99, 10, 66),
(2, "base", 89.99, 5, 77),
(1, "complexo vitamínico", 105.00, 13, 88);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT nome, preco, quantidade_estoque AS quantidade, categotia AS categoria
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT nome, preco, quantidade_estoque AS quantidade, categotia AS categoria
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.categotia = "cosmético";

