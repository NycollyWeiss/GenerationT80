CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
    id BIGINT NOT NULL AUTO_INCREMENT,
    nome_categoria VARCHAR(255),
    descricao_categoria VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE tb_produtos (
    id BIGINT NOT NULL AUTO_INCREMENT,
    nome_produto VARCHAR(255),
    valor DECIMAL(10, 2),
    quantidade INT,
    data_validade DATE,
    id_categoria BIGINT,
    PRIMARY KEY(id),
    FOREIGN KEY(id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES
('Carnes Bovinas', 'Cortes de carne bovina'),
('Aves', 'Cortes de frango e outras aves'),
('Suínos', 'Cortes de carne suína'),
('Peixes', 'Peixes frescos e congelados'),
('Embutidos', 'Produtos embutidos como linguiças e salsichas');

INSERT INTO tb_produtos (nome_produto, valor, quantidade, data_validade, id_categoria)
VALUES
('Picanha', 120.00, 50, '2023-12-31', 1),
('Coxa de Frango', 25.00, 100, '2023-11-15', 2),
('Linguiça Toscana', 35.00, 80, '2023-10-20', 5),
('Filé de Tilápia', 40.00, 60, '2023-11-10', 4),
('Costela Suína', 55.00, 70, '2023-12-01', 3),
('Alcatra', 90.00, 40, '2023-12-25', 1),
('Peito de Frango', 30.00, 120, '2023-11-30', 2),
('Salsicha', 15.00, 200, '2023-10-25', 5);

SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT p.id, p.nome_produto, p.valor, p.quantidade, p.data_validade, c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id;

SELECT p.id, p.nome_produto, p.valor, p.quantidade, p.data_validade, c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id
WHERE c.nome_categoria = 'Aves';