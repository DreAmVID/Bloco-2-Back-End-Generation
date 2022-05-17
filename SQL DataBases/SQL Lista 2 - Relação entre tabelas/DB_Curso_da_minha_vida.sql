CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida,

CREATE TABLE tb_categoria (
id_categoria INT AUTO_INCREMENT,
duração VARCHAR (20),
área VARCHAR (20),
patrocinador VARCHAR (20),
PRIMARY KEY (id_categoria)
);

INSERT INTO tb_categoria (duração, área, patrocinador) VALUES
('Curto', 'Negócios', 'SENAC'),
('Curto', 'Informática', 'Santander'),
('Curto', 'Gestão de Projetos', 'Bradesco'),
('Média', 'Eletrotecnica', 'SENAI'),
('Grande', 'Java', 'Generation');

CREATE TABLE tb_produto (
id_curso INT AUTO_INCREMENT,
nome VARCHAR (30),
valor VARCHAR (20),
média DECIMAL (7,2),
modulos BIGINT,
modalidade VARCHAR (20),
categ_id INT,

PRIMARY KEY (id_curso),
FOREIGN KEY (categ_id) REFERENCES tb_categoria (id_categoria)
);

INSERT INTO tb_produto (nome, valor, média, modulos, modalidade, categ_id) VALUES
('Gestão de Projetos Ágeis', '899.99', '7', '4', 'EAD', '1'),
('Gestão de Projetos Cascata', '599.99', '7', '3', 'EAD', '1'),
('Eletrotecnica 1', '1499.99', '7', '8', 'Presencial', '4'),
('AudioVisual', '989.99', '7', '2', 'Semi-Presencial', '2'),
('Excel', '599.99', '6', '2' , 'EAD', '2'),
('Bloco 1', '0.00', '9', '1', 'EAD', '5'),
('Bloco 2', '0.00', '9', '1', 'EAD', '5'),
('Front-End', '19.99', '6', '2', 'EAD', '2');

SELECT * FROM tb_produto WHERE valor > 500
SELECT * FROM tb_produto WHERE valor < 2660 and valor > 800
SELECT * FROM tb_produto WHERE nome LIKE "J%"
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_produto.categ_id;
SELECT * FROM tb_produto WHERE categ_id = '2'