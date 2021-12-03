CREATE DATABASE estoque;
CREATE TABLE produtos (
id INT NOT NULL AUTO_INCREMENT,
produto VARCHAR (255),
cor VARCHAR (255),
tamanho TINYINT (2),
material VARCHAR (255),
preco FLOAT (5,2),
PRIMARY KEY (id)
);
INSERT INTO produtos (produto, cor, tamanho, material, preco)
VALUES ('calça jeans', 'preto','40', 'denim', 149.90),
('saia godê midi', 'estampa floral','38', 'neoprene', 127.90),
('biquíni', 'estampa geométrica','44', 'suplex', 79.90),
('vestido longo', 'estampa floral exclusiva','42', 'viscose', 529.99),
('camisa alfaiataria feminina', 'branca','40', 'linho', 559.99),
('camisa alfaiataria feminina', 'listrada','38', 'tricolini', 109.90),
('vestido lady like', 'vermelho','36', 'neoprene', 279.90),
('blazer boyfriend feminino', 'azul marinho','48', 'corino', 639.99);
SELECT * FROM produtos;
SELECT produto, preco FROM produtos
WHERE preco <500
ORDER BY preco;
SELECT produto, preco FROM produtos
WHERE preco >500
ORDER BY preco;

UPDATE produtos SET preco = 529.90
WHERE id = 8;
SELECT * FROM produtos