CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_colaborador VARCHAR(255) NOT NULL,
numero_registro VARCHAR(15) NOT NULL UNIQUE,
telefone VARCHAR(17),
endereco VARCHAR(500),
data_nascimento DATE,
data_admissao timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
departamento VARCHAR(50),
cargo VARCHAR(255),
salario DECIMAL(7,2) NOT NULL
);