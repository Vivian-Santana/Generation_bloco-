CREATE DATABASE db_cidade_das_frutas;
CREATE TABLE tb_categoria(
id INT NOT NULL AUTO_INCREMENT,
categoria VARCHAR (20),
ativo BOOLEAN,
PRIMARY KEY (id)
);
INSERT INTO tb_categoria (categoria, ativo)
VALUES ('frutas', TRUE),
('legumes', TRUE),
('verduras', TRUE);

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto (
id INT NOT NULL AUTO_INCREMENT,
item VARCHAR (200),
preco_kg_unidade DECIMAL (5,2),
categoria_id INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_produto (item, preco_kg, categoria)
VALUES ('maça', 2.50, 1),
('banana', 3.30, 1),
('alface', 1.50, 6),
('tomate', 4.50, 1),
('couve', 2.50, 3),
('cenoura', 2.50, 5),
('morango', 2.50, 4),
('maracujá', 10.80, 4);

SELECT * FROM tb_produto;

 