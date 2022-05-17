-- criar banco de dados

	CREATE DATABASE db_RhResources;
    
    -- Selecionar o banco de dados
    
    USE db_RhResources;
    
    -- Criar tabela
    
    CREATE TABLE funcionaries (
		id_func INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
        nome VARCHAR(40) NOT NULL,
        salario DECIMAL(7,2) NOT NULL,
        cargo VARCHAR(20) NOT NULL,
        endereco VARCHAR(40) NOT NULL);
        
        -- Inserir dados
        
        INSERT INTO funcionaries (nome,salario,cargo,endereco)
        VALUES ('Zilean', '1200', 'Senhor do Tempo', 'Rua do Paradoxo');
        INSERT INTO funcionaries (nome,salario,cargo,endereco)
        VALUES ('Sett', '1500', 'Chefão', 'Rua do Chefe');
        INSERT INTO funcionaries (nome,salario,funcionaries,cargo,endereco)
        VALUES ('Braum', '3200', 'Coração de ouro', 'Rua Porta Secreta');
        INSERT INTO funcionaries (nome,salario,cargo,endereco)
        VALUES ('Ashe', '5500', 'Rainha do Gelo', 'Rua de Freljord');
        
        
        -- SELECT DADOS
        
        SELECT*FROM funcionaries;
        
        -- Condicionais
        
        SELECT * FROM funcionaries WHERE salario > 2000;
        
        SELECT * FROM funcionaries WHERE salario < 2000;
        
        -- UPDATE DOS DADOS
        
        UPDATE funcionaries SET salario = 2500 WHERE ID_func = 5;
        
        UPDATE funcionaries SET ID_func = 4 WHERE ID_func = 5;