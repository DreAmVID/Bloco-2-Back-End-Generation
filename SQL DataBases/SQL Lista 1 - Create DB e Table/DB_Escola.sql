CREATE DATABASE db_School;

 -- Selecionar o banco de dados
    
    USE db_School;
    
    -- Criar tabela
    
    CREATE TABLE estudantes (
		id_aluno INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
        nomealuno VARCHAR(40) NOT NULL,
        idade DECIMAL(7,2) NOT NULL,
        curso VARCHAR(20) NOT NULL,
		turma VARCHAR(40) NOT NULL,
        nota DECIMAL(2,1) NOT NULL);
        
        -- Inserir dados
        
        INSERT INTO estudantes (nomealuno, idade, curso, turma, nota)
        VALUES ('David', '23', 'Engenharia', '42', '7.1');
        INSERT INTO estudantes (nomealuno, idade, curso, turma, nota)
        VALUES ('Gabs', '22', 'Gestão de Pol Pub', '42', '8.2');
        INSERT INTO estudantes (nomealuno, idade, curso, turma, nota)
        VALUES ('Edgar', '26', 'História', '42', '9.9');
        INSERT INTO estudantes (nomealuno, idade, curso, turma, nota)
        VALUES ('Evy', '26', 'Letras', '42', '9.1');
        INSERT INTO estudantes (nomealuno, idade, curso, turma, nota)
        VALUES ('Gabi', '22', 'ADS', '42', '8.9');
        INSERT INTO estudantes (nomealuno, idade, curso, turma, nota)
        VALUES ('Tiago', '25', 'RH', '42', '9.5');
        INSERT INTO estudantes (nomealuno, idade, curso, turma, nota)
        VALUES ('Armando', '18', 'Indefinido', '42', '9.7');
        INSERT INTO estudantes (nomealuno, idade, curso, turma, nota)
        VALUES ('Lucas', '18', 'Trapper', '42', '8.0');
        
        SELECT * FROM estudantes WHERE nota > 7;
        SELECT * FROM estudantes WHERE nota < 7;
        
         UPDATE estudantes SET curso = 'Teatro' WHERE ID_aluno = 7;
         
         SELECT * FROM estudantes
        
        
        
        
        
        