
CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;


CREATE TABLE tb_categorias (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome_categoria VARCHAR(50) NOT NULL,
  descricao TEXT NOT NULL
);


CREATE TABLE tb_produtos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  preco DECIMAL(6,2) NOT NULL,
  marca VARCHAR(50) NOT NULL,
  estoque INT NOT NULL,
  id_categoria INT,
  FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);


INSERT INTO tb_categorias (nome_categoria, descricao) VALUES 
('Ferramentas', 'Ferramentas manuais e elétricas.'),
('Tintas', 'Tintas para parede e madeira.'),
('Hidráulica', 'Produtos para instalações hidráulicas.'),
('Elétrica', 'Materiais elétricos e iluminação.'),
('Construção', 'Materiais básicos de construção.');

INSERT INTO tb_produtos (nome, preco, marca, estoque, id_categoria) VALUES
('Furadeira', 250.00, 'Bosch', 10, 1),
('Marreta', 80.00, 'Tramontina', 15, 1),
('Tinta Branca', 120.00, 'Suvinil', 20, 2),
('Cano PVC', 15.00, 'Tigre', 50, 3),
('Interruptor', 25.00, 'Fame', 30, 4),
('Cimento', 35.00, 'Votorantim', 40, 5),
('Lâmpada LED', 40.00, 'Philips', 100, 4),
('Argamassa', 70.00, 'Quartzolit', 25, 5);


SELECT * FROM tb_produtos WHERE preco > 100.00;


SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;


SELECT * FROM tb_produtos WHERE nome LIKE '%C%';


SELECT p.id, p.nome, p.preco, p.marca, c.nome_categoria 
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id;


SELECT p.id, p.nome, p.preco, p.marca, c.nome_categoria 
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id
WHERE c.nome_categoria = 'Hidráulica';