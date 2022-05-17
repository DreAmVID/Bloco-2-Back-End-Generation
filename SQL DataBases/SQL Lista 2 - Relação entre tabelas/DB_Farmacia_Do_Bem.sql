CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem

CREATE TABLE tb_categoria (
id_categoria INT AUTO_INCREMENT,
classe VARCHAR (20),
farmacia VARCHAR (20),
tipo VARCHAR (20),
PRIMARY KEY (id_categoria)
);

INSERT INTO tb_categoria (classe, farmacia, tipo) VALUES
('Antibiótico', 'Sanofi', 'Comprimido'),
('Corticoide', 'Bayer', 'Gotas'),
('Analgésico', 'Sanofi', 'Comprimido'),
('Cosmético', 'Natura', 'Aplicação'),
('Anti-Inflamatório', 'Glaxo', 'Intranasal');

CREATE TABLE tb_produto (
id_remedio INT AUTO_INCREMENT,
valor DECIMAL (7,2),
quantidade VARCHAR (20),
nome VARCHAR (20),
tarja VARCHAR (20),
generico VARCHAR (20),
categ_id INT,

PRIMARY KEY (id_remedio),
FOREIGN KEY (categ_id) REFERENCES tb_categoria (id_categoria)
);

INSERT INTO tb_produto (valor, quantidade, nome, tarja, generico, categ_id) VALUES
('59.99', '120 Doses', 'Avamys', 'Vermelha', 'Não', '5'),
('69.99', '500mg', 'Amoxicilina', 'Vermelha', 'Não', '1'),
('79.99', '500mg', 'Penicilina', 'Vermelha', 'Não', '1'),
('19.99', '250mg', 'Hidrocortisona', 'Vermelha', 'Não', '2'),
('25.99', '250mg', 'Prednisona', 'Vermelha', 'Não', '2'),
('39.99', '250mg', 'Cataflam', 'Preta', 'Não', '5'),
('15.99', '250mg', 'Alergia Genérico', 'Amarela', 'Sim', '2'),
('99.99', '1g', 'Sabonete anti-acne', 'N/A', 'Não', '4');



SELECT * FROM tb_produto WHERE valor > 50
SELECT * FROM tb_produto WHERE valor < 60 and valor > 3
SELECT * FROM tb_produto WHERE nome LIKE "B%"
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_produto.categ_id;
SELECT * FROM tb_produto WHERE categ_id = '4'