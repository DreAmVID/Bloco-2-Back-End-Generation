CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes

CREATE TABLE tb_categoria (
id_categoria INT AUTO_INCREMENT,
tipo VARCHAR (20),
origem VARCHAR (20),
marca VARCHAR (20),
PRIMARY KEY (id_categoria)
);

INSERT INTO tb_categoria (tipo, origem, marca) VALUES
('Premium', 'MG', 'Friboi'),
('Simples', 'MG', 'Carne do Dia'),
('Extra Premium', 'BH', 'Extra cortes'),
('Diamond', 'RN', 'Qualita'),
('Gold', 'RJ', 'Gaban');

CREATE TABLE tb_produto (
id_carne INT AUTO_INCREMENT,
nome VARCHAR (30),
valor VARCHAR (20),
quantidade VARCHAR (20),
classe VARCHAR (20),
embalagem VARCHAR (20),
categ_id INT,

PRIMARY KEY (id_carne),
FOREIGN KEY (categ_id) REFERENCES tb_categoria (id_categoria)
);

INSERT INTO tb_produto (nome, valor, quantidade, classe, embalagem, categ_id) VALUES
('Angus', '79.99', '1 KG', 'Bovina', 'Pacote', '1'),
('Colchão Mole', '44.99', '1 KG', 'Bovina', 'Peça', '2'),
('Sobrecoxa', '29.99', '1 KG', 'Aves', 'KG', '4'),
('Peito de Frango', '31.99', '1 KG', 'Aves', 'KG', '4'),
('Cupim', '49.99', '1 KG', 'Bovina', 'KG', '5'),
('Linguiçeta de Frango', '34.99', '1 KG', 'Aves', 'KG', '5'),
('Picanha', '59.99', '1 KG', 'Bovina', 'KG', '2'),
('Hamburguer Vegano', '21.99', '24 Peças', 'Veggie', 'Pacote', '1');


SELECT * FROM tb_produto WHERE valor > 50
SELECT * FROM tb_produto WHERE valor < 60 and valor > 3
SELECT * FROM tb_produto WHERE nome LIKE "C%"
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_produto.categ_id;
SELECT * FROM tb_produto WHERE categ_id = '4'