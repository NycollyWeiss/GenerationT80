
CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;


CREATE TABLE tb_categorias (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome_categoria VARCHAR(50) NOT NULL,
  descricao TEXT NOT NULL
);


CREATE TABLE tb_produtos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  preco DECIMAL(6,2) NOT NULL,
  fabricante VARCHAR(50) NOT NULL,
  validade DATE NOT NULL,
  id_categoria INT,
  FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES 
('Medicamentos', 'Remédios e produtos farmacêuticos.'),
('Higiene', 'Produtos de higiene pessoal.'),
('Beleza', 'Produtos de beleza e cuidados pessoais.'),
('Vitaminas', 'Suplementos e vitaminas.'),
('Infantil', 'Produtos para cuidados infantis.');

INSERT INTO tb_produtos (nome, preco, fabricante, validade, id_categoria) VALUES
('Paracetamol', 25.00, 'Medley', '2026-01-01', 1),
('Shampoo Anticaspa', 35.50, 'Head & Shoulders', '2025-12-01', 2),
('Creme Hidratante', 60.00, 'Nivea', '2026-05-15', 3),
('Vitamina C', 80.00, 'Sundown', '2025-09-30', 4),
('Fralda Descartável', 50.00, 'Pampers', '2026-03-10', 5),
('Antialérgico', 55.00, 'Neo Química', '2027-02-20', 1),
('Sabonete Líquido', 20.00, 'Protex', '2025-11-11', 2),
('Protetor Solar', 99.90, 'La Roche-Posay', '2025-08-22', 3);


SELECT * FROM tb_produtos WHERE preco > 50.00;


SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';


SELECT p.id, p.nome, p.preco, p.fabricante, c.nome_categoria 
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id;


SELECT p.id, p.nome, p.preco, p.fabricante, c.nome_categoria 
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id
WHERE c.nome_categoria = 'Beleza';