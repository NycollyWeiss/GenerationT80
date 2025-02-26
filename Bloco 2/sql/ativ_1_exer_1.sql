CREATE DATABASE db_rh;

USE db_rh;


CREATE TABLE tb_colaborador(
id BIGINT NOT NULL AUTO_INCREMENT, 
nome VARCHAR (255) , data_nascimento DATE, cargo VARCHAR(255) ,
setor VARCHAR(255) , usuario VARCHAR (255) , salario DECIMAL(6,2),
PRIMARY KEY(id)
);


INSERT INTO tb_colaborador(nome, data_nascimento, cargo, setor, usuario, salario)
VALUES("João Silva", "1990-05-15" , "Desenvolvedor", "TI", "joao.silva", 5500.00),
("Maria Oliveira", "1985-08-22","Analista de RH", "Recursos Humanos", "maria.oliveira", 4800.00),
("Carlos Souza", "1992-03-10", "Gerente de Vendas", "Vendas", "carlos.souza", 7200.00),
("Ana Costa", "1988-11-3", "Designer Gráfico", "Marketing", "ana.costa", 5200.00),
("Pedro Rocha", "1995-07-25", "Assistente Administrativo", "Administração", "pedro.rocha", 1500.00);


SELECT * FROM tb_colaborador WHERE salario > 2000.00;


SELECT * FROM  tb_colaborador WHERE salario < 2000.00;


UPDATE tb_colaborador SET salario = 2000.00 WHERE id=2;



