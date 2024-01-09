CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo_massa ENUM ("fina", "pan"),
classificacao ENUM ("tradicional", "especial")
);