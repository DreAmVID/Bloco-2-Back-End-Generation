CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida,

CREATE TABLE tb_categoria (
id_categoria INT AUTO_INCREMENT,
tipo VARCHAR (20),
origem VARCHAR (20),
marca VARCHAR (20),
PRIMARY KEY (id_categoria)
);

INSERT INTO tb_categoria (tipo, origem, marca) VALUES
('Acabamento', 'SP', 'AcabaConstru'),
('Estrutura', 'SP', 'BaseMarcas'),
('Vedação', 'RJ', 'Vedacit'),
('Elétrico', 'MG', 'Fios E Cabos'),
('Hidráulico', 'PR', 'Canos e Companhia');

CREATE TABLE tb_produto (
id_const INT AUTO_INCREMENT,
nome VARCHAR (30),
valor VARCHAR (20),
peso VARCHAR (20),
classe VARCHAR (20),
embalagem VARCHAR (20),
categ_id INT,

PRIMARY KEY (id_const),
FOREIGN KEY (categ_id) REFERENCES tb_categoria (id_categoria)
);

INSERT INTO tb_produto (nome, valor, peso, classe, embalagem, categ_id) VALUES
('Piso', '19.99', '1M²', '', 'Fardo', '1'),
('Fios de Cobre', '7.80', '5M', 'Bovina', 'Rolo', '4'),
('Cano de PVC', '8.99', '10M', 'Aves', 'Tubo', '5'),
('Vigas', '31.99', '10M', 'Aves', 'Barras', '2'),
('Massa Corrida', '29.99', '5M²', 'KG' , 'Balde', '1'),
('Cimento', '34.99', '20 KG', 'Aves', 'Saco', '1'),
('Rejunte', '16.99', '5 KG', 'Bovina', 'Saco', '1'),
('Telhas', '19.99', '1M', 'Veggie', 'Fardo', '2');

SELECT * FROM tb_produto WHERE valor > 50
SELECT * FROM tb_produto WHERE valor < 60 and valor > 3
SELECT * FROM tb_produto WHERE nome LIKE "C%"
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_produto.categ_id;
SELECT * FROM tb_produto WHERE categ_id = '4'