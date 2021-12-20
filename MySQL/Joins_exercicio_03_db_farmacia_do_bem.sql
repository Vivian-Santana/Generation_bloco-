CREATE DATABASE db_farmacia_do_bem;
CREATE TABLE tb_categoria (
id INT NOT NULL AUTO_INCREMENT,
categoria VARCHAR (20),
ativo BOOLEAN,
PRIMARY KEY (id)
);

INSERT INTO tb_categoria (categoria, ativo)
VALUES ('medicamento', TRUE),
('cosmético', TRUE),
('higiene', TRUE),
('suplementos', TRUE),
('outros', TRUE);

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto (
id INT NOT NULL AUTO_INCREMENT,
produto VARCHAR (200),
marca VARCHAR (200),
preco DECIMAL (5,2),
categoria_id INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_produto (produto, marca, preco, categoria_id)
VALUES ('neosaldina', 'takeda', 5.90, 1),
('dipirona', 'EMS', 2.50, 1),
('loratadina', 'ache', 27.90, 1),
('casting creme gloss', 'loreal', 24.30, 2),
('cotonetes', 'Johnson', 10.90, 3),
('shampoo', 'clear', 21.90, 3),
('whey protein', 'pura vida', 194.97, 4),
('protetor solar', 'la roche', 82.90, 5);

SELECT * FROM tb_produto;

SELECT produto, preco FROM tb_produto 
WHERE preco > 50
ORDER BY preco;

SELECT produto, preco FROM tb_produto
WHERE preco BETWEEN 3 AND 60
ORDER BY preco;

SELECT * FROM tb_produto
INNER JOIN tb_categoria ON tb_categoria.id  =  tb_produto.categoria_id
ORDER BY produto;