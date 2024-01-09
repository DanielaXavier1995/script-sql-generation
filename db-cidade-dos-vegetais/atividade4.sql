CREATE DATABASE db_cidade_dos_vegetais;

USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
categoria ENUM ("fruta", "legumes", "bebidas", "mercearia", "outros") NOT NULL,
descricao VARCHAR(255)
);

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
categoria_id BIGINT,
nome VARCHAR(255) NOT NULL,
preco DOUBLE(6,2) NOT NULL,
quantidade_estoque INT NOT NULL,
data_registro DATE NOT NULL,
data_validade DATE NOT NULL,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(categoria) 
VALUES ("fruta"), ("legumes"), ("bebidas"), ("mercearia"), ("outros");

INSERT INTO tb_produtos (categoria_id, nome, preco, quantidade_estoque, data_registro, data_validade)
VALUES
(1, "maça", 10.99, 15, now(), "2024-01-20"),
(2, "alface", 0.99, 50, now(), "2024-01-13"),
(3, "suco de uva", 12.99, 30, now(), "2024-02-24"),
(4, "arroz", 4.99, 20, now(), "2024-04-29"),
(1, "pitaia", 60.00, 5, now(), "2024-01-30"),
(2, "batata", 12.00, 15, now(), "2024-01-30"),
(4, "legumes congelados", 27.50, 30, now(), "2024-05-28"),
(4, "morangos congelados", 59.00, 12, now(), "2024-05-28");

SELECT * FROM tb_produtos WHERE preco < 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 30.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT nome, preco, quantidade_estoque AS quantidade, categoria
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT nome, preco, quantidade_estoque AS quantidade, categoria
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.categoria = "fruta";





