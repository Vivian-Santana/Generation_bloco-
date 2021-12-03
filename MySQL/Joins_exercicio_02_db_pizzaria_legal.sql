CREATE DATABASE db_pizzaria_legal;
CREATE TABLE tb_categoria (
id INT NOT NULL AUTO_INCREMENT,
tipo VARCHAR (20),
bordas VARCHAR (30),
tamanho VARCHAR (20),
PRIMARY KEY (id)
);
INSERT INTO tb_categoria (tipo, bordas, tamanho)
VALUES ('salgada', 'catupiry','grande'),
('salgada', 'catupiry','media'),
('salgada', 'catupiry','broto'),
('vegetariana', 'catupiry','grande'),
('vegetariana', 'catupiry','media'),
('vegetariana', 'catupiry','broto'),
('doce', 'chocolate','grande'),
('doce', 'chocolate','medio'),
('doce', 'chocolate','broto');
SELECT * FROM tb_categoria;

CREATE TABLE tb_pizza (
id INT NOT NULL AUTO_INCREMENT,
recheio_principal VARCHAR (30),
recheio_2 VARCHAR (30),
incremento  VARCHAR (30),
molho VARCHAR (30),
preco DECIMAL (5,2),
categoria_id INT NOT NULL,

PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);
INSERT INTO tb_pizza (recheio_principal, recheio_2, incremento, molho, preco,categoria_id)
VALUES ('frango','mussarella', 'catupiry', 'tomate', 51.90,1),
 ('carne seca','mussarella', 'catupiry', 'tomate', 65.00, 1),
('brócolis','mussarella', 'catupiry', 'branco', 54.90, 4),
('floresta negra','morango','chocolate','leite condensado', 75.90,7),
('cababresa','mussarela','milho','cheddar', 56.90, 1),
('atum','mussarela','catupiry','branco', 58.90, 4),
('banana','chocolate branco','leite condensado', 'canela', 60.90,7),
('Mussarela', 'provolone','catupiry', 'branco', 60.00, 4),
('floresta negra','morango','chocolate','leite condensado', 25.90, 9),
('cababresa','mussarela','milho','cheddar', 23.90, 3),
('brócolis','mussarella', 'catupiry', 'branco', 30.90, 6),
('carne seca','mussarella', 'catupiry', 'tomate', 45.90, 2),
('banana','chocolate branco','leite condensado', 'canela', 21.90,9),
('Mussarela','provolone','catupiry', 'branco', 37.90, 5);

SELECT * FROM tb_pizza;

SELECT recheio_principal, preco FROM tb_pizza
WHERE preco > 45
ORDER BY preco;

SELECT recheio_principal, preco FROM tb_pizza
WHERE preco BETWEEN 29 AND 60
ORDER BY preco;

SELECT * FROM tb_pizza WHERE recheio_principal LIKE '%C%'
ORDER BY recheio_principal;

SELECT * FROM tb_pizza 
INNER JOIN tb_categoria ON tb_categoria.id = tb_pizza.categoria_id
ORDER BY recheio_principal

