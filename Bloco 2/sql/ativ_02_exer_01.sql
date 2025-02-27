

CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;



CREATE TABLE tb_classes (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome_classe VARCHAR(50) NOT NULL,
  descricao VARCHAR(500) NOT NULL
);



CREATE TABLE tb_personagens (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  poder_ataque INT NOT NULL,
  poder_defesa INT NOT NULL,
  nivel INT NOT NULL,
  id_classe INT,
  FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);


INSERT INTO tb_classes (nome_classe, descricao) VALUES 
('Guerreiro', 'Especialista em combate corpo-a-corpo com armas pesadas.'),
('Mago', 'Mestre das artes arcanas e feitiços de longa distância.'),
('Paladino', 'Defensor da luz e protetor da justiça divina.'),
('Arqueiro', 'Especialista em ataques à distância com alta precisão.'),
('Bárbaro', 'Guerreiro selvagem movido pela fúria e força bruta.');


INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, id_classe) VALUES
('Thorin', 2500, 1500, 10, 1),
('Gandalf', 3000, 1000, 12, 2),
('Lancelot', 2200, 1800, 15, 3),
('Legolas', 2100, 1300, 8, 4),
('Merlin', 3200, 900, 11, 2),
('Arthur', 2400, 1600, 14, 3),
('Robin', 2300, 1200, 9, 4),
('Conan', 2800, 1400, 13, 5);


SELECT * FROM tb_personagens WHERE poder_ataque > 2000;


SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;


SELECT * FROM tb_personagens WHERE nome LIKE '%C%';


SELECT p.id, p.nome, p.poder_ataque, p.poder_defesa, p.nivel, c.nome_classe 
FROM tb_personagens p
INNER JOIN tb_classes c ON p.id_classe = c.id;

SELECT p.id, p.nome, p.poder_ataque, p.poder_defesa, p.nivel, c.nome_classe 
FROM tb_personagens p
INNER JOIN tb_classes c ON p.id_classe = c.id
WHERE c.nome_classe = 'Arqueiro';