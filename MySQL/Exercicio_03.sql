CREATE DATABASE registro_escolar;
CREATE TABLE estudantes(
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR (100),
periodo VARCHAR (50),
nivel VARCHAR (50),
ano_escolar TINYINT (2),
nota_semestral DECIMAL (5,1),
PRIMARY KEY (id)
);
INSERT INTO estudantes (nome, periodo, nivel, ano_escolar, nota_semestral)
VALUES ('Marina Barbosa', 'manhã', 'infantil', 2, 8.5),
		('Letícia Sousa', 'tarde','fundamental', 5, 7.0),
		('Geovana Martinelli', 'noite', 'medio', 3, 5.5),
		('Leandra Luz', 'noite', 'medio', 1, 10),
		('Mateus Souza', 'tarde', 'infantil', 2, 7.0),
		('Henry Carvalho', 'manhã','fundamental', 5, 10),
		('Roberto Oliveira', 'noite', 'medio', 2, 7.0);
SELECT * FROM estudantes;
SELECT nome, nota_semestral FROM estudantes
WHERE nota_semestral > 7
ORDER BY nota_semestral;

SELECT nome, nota_semestral FROM estudantes
WHERE nota < 7
ORDER BY nota;

UPDATE estudantes SET periodo = 'manhã'
WHERE id = 2;
SELECT * FROM estudantes
