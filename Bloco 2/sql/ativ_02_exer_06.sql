
CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;



CREATE TABLE tb_categorias (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome_categoria VARCHAR(50) NOT NULL,
  descricao TEXT NOT NULL
);


DROP TABLE IF EXISTS tb_cursos;
CREATE TABLE tb_cursos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  preco DECIMAL(7,2) NOT NULL,
  duracao INT NOT NULL,  -- Em horas
  nivel VARCHAR(20) NOT NULL,
  id_categoria INT,
  FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);


INSERT INTO tb_categorias (nome_categoria, descricao) VALUES 
('Programação', 'Cursos voltados para desenvolvimento de software.'),
('Design', 'Cursos de design gráfico e UX/UI.'),
('Marketing Digital', 'Cursos de marketing online e mídias sociais.'),
('Negócios', 'Cursos de gestão e empreendedorismo.'),
('Idiomas', 'Cursos de aprendizado de línguas.');


INSERT INTO tb_cursos (nome, preco, duracao, nivel, id_categoria) VALUES
('Java Completo', 800.00, 120, 'Avançado', 1),
('Python para Iniciantes', 500.00, 80, 'Básico', 1),
('Web Design Responsivo', 450.00, 60, 'Intermediário', 2),
('SEO Avançado', 650.00, 40, 'Avançado', 3),
('Gestão de Projetos', 750.00, 100, 'Intermediário', 4),
('Inglês para Negócios', 600.00, 90, 'Intermediário', 5),
('Marketing de Conteúdo', 550.00, 50, 'Básico', 3),
('Design de Interfaces', 700.00, 70, 'Avançado', 2);


SELECT * FROM tb_cursos WHERE preco > 500.00;


SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;


SELECT * FROM tb_cursos WHERE nome LIKE '%J%';


SELECT c.id, c.nome, c.preco, c.duracao, c.nivel, cat.nome_categoria 
FROM tb_cursos c
INNER JOIN tb_categorias cat ON c.id_categoria = cat.id;


SELECT c.id, c.nome, c.preco, c.duracao, c.nivel, cat.nome_categoria 
FROM tb_cursos c
INNER JOIN tb_categorias cat ON c.id_categoria = cat.id
WHERE cat.nome_categoria = 'Programação';