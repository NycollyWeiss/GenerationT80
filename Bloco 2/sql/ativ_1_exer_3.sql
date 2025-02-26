CREATE DATABASE db_escola;


USE db_escola;


CREATE TABLE tb_estudantes (
    id BIGINT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255),
    idade INT,
    turma VARCHAR(50),
    nota DECIMAL(4, 2),
    responsavel VARCHAR(255),
    PRIMARY KEY(id)
);

INSERT INTO tb_estudantes (nome, idade, turma, nota, responsavel)
VALUES
('Ana Silva', 15, '9º A', 8.5, 'Maria Silva'),
('Carlos Oliveira', 14, '8º B', 6.7, 'José Oliveira'),
('Mariana Costa', 16, '1º C', 9.0, 'Fernanda Costa'),
('Pedro Santos', 15, '9º A', 5.5, 'Ricardo Santos'),
('Julya Nunes', 14, '8º B', 7.8, 'Patrícia Nunes'),
('Lucas Albuqueque', 16, '1º C', 4.5, 'CamilaAlbuqueque'),
('Gabriel Almeida', 15, '9º A', 8.0, 'Roberto Almeida'),
('Isabela Souza', 14, '8º B', 6.0, 'Cláudia Souza');


SELECT * FROM tb_estudantes WHERE nota > 7.0;


SELECT * FROM tb_estudantes WHERE nota < 7.0;


UPDATE tb_estudantes SET nota = 7.5 WHERE id = 4;