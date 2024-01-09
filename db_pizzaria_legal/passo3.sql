CREATE TABLE tb_pizzas (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
categoria_id BIGINT,
sabor VARCHAR(255) NOT NULL,
preco DOUBLE(5,2) NOT NULL,
descricao VARCHAR(255) NOT NULL,
codigo INT NOT NULL UNIQUE,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);