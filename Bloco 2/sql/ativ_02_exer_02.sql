
CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;



CREATE TABLE tb_categoria_pizza(
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome_categoria VARCHAR(50) NOT NULL,
  descricao VARCHAR(500) NOT NULL
);


CREATE TABLE tb_pizzas (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  preco DECIMAL(6,2) NOT NULL,
  ingredientes TEXT NOT NULL,
  tamanho VARCHAR(20) NOT NULL,
  id_categoria INT,
  FOREIGN KEY (id_categoria_pizza) REFERENCES tb_categoria_pizza(id)
);


INSERT INTO tb_categoria_pizza(nome_categoria, descricao) VALUES 
('Tradicional', 'Pizzas com sabores clássicos e tradicionais.'),
('Especial', 'Pizzas com ingredientes selecionados e exclusivos.'),
('Doce', 'Pizzas doces para sobremesa.'),
('Vegetariana', 'Pizzas sem carne, com vegetais frescos.'),
('Premium', 'Pizzas com ingredientes gourmet.');


INSERT INTO tb_pizzas (nome, preco, ingredientes, tamanho, id_categoria) VALUES
('Margherita', 35.00, 'Molho, Queijo, Manjericão', 'Média', 1),
('Calabresa', 42.50, 'Molho, Queijo, Calabresa', 'Grande', 1),
('Frango Catupiry', 47.00, 'Frango, Catupiry, Queijo', 'Grande', 2),
('Chocolate', 39.00, 'Chocolate, Morango', 'Média', 3),
('Brócolis com Alho', 45.00, 'Brócolis, Alho, Queijo', 'Grande', 4),
('Camarão Gourmet', 79.90, 'Camarão, Catupiry, Queijo', 'Grande', 5),
('Quatro Queijos', 50.00, 'Queijo Mussarela, Parmesão, Gorgonzola, Provolone', 'Grande', 2),
('Romeu e Julieta', 38.00, 'Goiabada, Queijo', 'Média', 3);


SELECT * FROM tb_pizzas WHERE preco > 45.00;


SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;


SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';


SELECT p.id, p.nome, p.preco, p.tamanho, c.nome_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id;


SELECT p.id, p.nome, p.preco, p.tamanho, c.nome_categoria 
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id
WHERE c.nome_categoria = 'Doce';