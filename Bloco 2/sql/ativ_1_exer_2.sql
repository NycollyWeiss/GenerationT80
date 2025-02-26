CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produto (
    id BIGINT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255),
    descricao VARCHAR(255),
    preco DECIMAL(10, 2),
    quantidade INT,
    categoria VARCHAR(255),
    PRIMARY KEY(id)
);

INSERT INTO tb_produto (nome, descricao, preco, quantidade, categoria)
VALUES
('Smartphone Samsung', '128GB, 8GB RAM, DUALSIM', 1200.00, 50, 'Eletrônicos'),
('Notebook Nitro 5', '16GB RAM e SSD 512GB', 3500.00, 30, 'Informática'),
('Galaxy buds pro', 'Fone Bluetooth com cancelamento de ruído', 750.00, 100, 'Acessórios'),
('Smart TV 50"', '4K com HDR e Android TV', 2800.00, 20, 'Eletrônicos'),
('Mochila Kippling', 'Mochila resistente com compartimentos', 650.00, 200, 'Acessórios'),
('Tablet s6 lite"', 'Tablet com 64GB e tela Full HD', 2800.00, 40, 'Eletrônicos'),
('Câmera DSLR', 'Câmera profissional 24MP', 4500.00, 15, 'Fotografia'),
('Mouse Gamer', 'Mouse com 6 botões programáveis', 180.00, 80, 'Acessórios');


SELECT * FROM tb_produto WHERE preco > 500;

SELECT * FROM tb_produto WHERE preco > 500;

UPDATE tb_produto SET preco = 500.00 WHERE id = 3;
