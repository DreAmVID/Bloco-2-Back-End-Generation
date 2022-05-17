CREATE DATABASE db_LoL_Generation;

USE db_LoL_Generation;
    
CREATE TABLE tb_class (
	Id_Class BIGINT (5) AUTO_INCREMENT,
	Line VARCHAR(20),
    Class VARCHAR(20),
    Alcance VARCHAR(20),
    
    PRIMARY KEY (id_class)
);

    INSERT INTO tb_class (line, class, alcance) VALUES
    ('Top', 'Lutador', 'Curto'),
    ('Mid', 'Mago', 'Alto'),
    ('Adc', 'Atirador', 'Medio'),
    ('Jungle', 'Tank', 'Curto'),
    ('Suporte', 'Pell', 'Médio');
    
    CREATE TABLE tb_char (   
    id_char BIGINT AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
    origem VARCHAR(50),
    dificuldade VARCHAR(10),
    ataque DECIMAL (5,0),
    defesa DECIMAL (5,0),
    class_id BIGINT NOT NULL,
    
    PRIMARY KEY (id_char),
    FOREIGN KEY (class_id) REFERENCES tb_class (id_class)
);
    
    INSERT INTO tb_char (nome, origem, dificuldade, ataque, defesa, class_id) VALUES
    ('Sett', 'Ionia', 'Média', '3200', '2800','1'),
    ('Lulu', 'Bandopolis', 'Alta', '1500', '2300','5'),
    ('Xerath', 'Shurima', 'Alta', '3400', '1200','2'),
    ('Jinx', 'Zaun', 'Alta', '3500', '1100','3'),
    ('Sejuani', 'Freljord', 'Média', '1200', '3800','4'),
    ('Darius', 'Noxus', 'Média', '3600', '2000','1'),
    ('Dr Mundo', 'Zaun', 'Baixa', '2100', '4000','4'),
    ('Lux', 'Demacia', 'Média', '3600', '1000','2');
    
    SELECT * FROM tb_char WHERE defesa > 1000 AND defesa < 2000;
    SELECT * FROM tb_char WHERE ataque > 2000;
    SELECT * FROM tb_char WHERE nome LIKE "C%";
    SELECT * FROM tb_char WHERE class_id = 4;
    SELECT * FROM tb_char INNER JOIN tb_class ON tb_class.Id_Class = tb_char.class_id;
    