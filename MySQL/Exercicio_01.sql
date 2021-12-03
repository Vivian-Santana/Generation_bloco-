CREATE DATABASE rh;
CREATE TABLE tb_funcionarios(
id_fun INT NOT NULL AUTO_INCREMENT,
nome VARCHAR (255),
funcao VARCHAR (255),
sexo ENUM ('M', 'F'),
hora_entrada TIME,
hora_saida TIME,
salario FLOAT,
PRIMARY KEY (id_fun)
);
INSERT INTO tb_funcionarios (nome,funcao, sexo, hora_entrada, hora_saida, salario)
VALUES ('Claudio da Silva', 'vendedor', 'm','080000', '170000', '2800'),
('Ana Maria de Sousa', 'vendedora', 'f','100000', '190000', 2500),
('Monare Magalhães', 'gerente', 'f','070000', '160000', 3000),
('Marcio Lira', 'estagiário', 'm','080000', '170000', 1700),
('Silvia Santos', 'ajudante geral', 'f','090000', '180000', 1850);
SELECT * FROM tb_funcionarios;
SELECT nome, salario FROM tb_funcionarios
WHERE salario < 2000
ORDER BY nome;
SELECT nome, salario FROM tb_funcionarios
WHERE salario > 2000
ORDER BY nome;

UPDATE tb_funcionarios SET funcao = 'Auxiliar administrativo'
WHERE id_fun = 4;
SELECT * FROM tb_funcionarios
