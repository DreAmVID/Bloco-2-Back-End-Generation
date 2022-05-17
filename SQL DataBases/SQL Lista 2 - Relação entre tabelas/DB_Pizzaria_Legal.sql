CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal

CREATE TABLE tb_categoria (
id_categoria INT AUTO_INCREMENT,
quantidade_pessoas VARCHAR (20),
tipo VARCHAR (20),
temperatura VARCHAR (20),
PRIMARY KEY (id_categoria)
);

INSERT INTO tb_categoria (quantidade_pessoas, tipo, temperatura) VALUES
('Familia', 'Premium', 'Muito quente'),
('Casal', 'Standart', 'Média'),
('Individual', 'Platinum', 'Quente'),
('Familia', 'Standart', 'Quente'),
('Individual', 'Premium', 'Muito Quente');

CREATE TABLE tb_pizza (
id_pizza INT AUTO_INCREMENT,
valor DECIMAL (7,2),
sabor VARCHAR (20),
tamanho VARCHAR (20),
azeitona VARCHAR (20),
categoria VARCHAR (20),
categ_id INT,

PRIMARY KEY (id_pizza),
FOREIGN KEY (categ_id) REFERENCES tb_categoria (id_categoria)
);

INSERT INTO tb_pizza (valor, sabor, tamanho, azeitona, categoria, categ_id) VALUES
('37.90', 'Frango com Catupiry', 'Grande', 'Sim', 'Salgada', '1'),
('39.90', 'Marguerita', 'Média', 'Sim', 'Salgada', '2'),
('39.90', 'Calabacon', 'Broto', 'Não', 'Salgada', '5'),
('27.99', 'Romeu e Julieta', 'Grande', 'Não', 'Doce', '2'),
('37.90', 'Pepperoni', 'Média', 'Sim', 'Salgada', '3'),
('29.99', 'Nutella com Morango', 'Broto', 'Não', 'Doce', '5'),
('39.99', 'Brocólis', 'Grande', 'Não', 'Vegana', '5'),
('39.99', 'Portuguesa', 'Média', 'Sim', 'Salgada', '1');

SELECT * FROM tb_pizza WHERE valor > 45,
SELECT * FROM tb_pizza WHERE valor < 69 and valor > 29,
SELECT * FROM tb_pizza WHERE sabor LIKE "C%"
SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_pizza.categ_id;
SELECT * FROM tb_pizza WHERE categoria = 'Doce'





