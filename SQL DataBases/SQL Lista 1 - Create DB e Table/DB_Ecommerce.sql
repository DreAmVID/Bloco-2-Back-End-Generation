CREATE DATABASE db_Ecommerce;

 -- Selecionar o banco de dados
    
    USE db_Ecommerce;
    
    -- Criar tabela
    
    CREATE TABLE produtos (
		id_prod INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
        nomedoproduto VARCHAR(40) NOT NULL,
        valor DECIMAL(7,2) NOT NULL,
        segmento VARCHAR(20) NOT NULL,
		origem VARCHAR(40) NOT NULL,
        popularidade DECIMAL(2,1) NOT NULL);
        
	-- Inserir dados
        
        INSERT INTO produtos (nomedoproduto,valor,segmento,origem,popularidade)
        VALUES ('Camiseta Black Team', '59.90', 'Camisetas', 'Chinese', '4.0');
        INSERT INTO produtos (nomedoproduto,valor,segmento,origem,popularidade)
        VALUES ('Camiseta Red Team', '59.90', 'Camisetas', 'Chinese', '3.9');
		INSERT INTO produtos (nomedoproduto,valor,segmento,origem,popularidade)
        VALUES ('Camiseta Blue Team', '59.90', 'Camisetas', 'Chinese', '4.9');
		INSERT INTO produtos (nomedoproduto,valor,segmento,origem,popularidade)
        VALUES ('Calça Jeans Karate Kid', '139.90', 'Calças', 'Tailandia', '3.6');
        INSERT INTO produtos (nomedoproduto,valor,segmento,origem,popularidade)
        VALUES ('Bone Princes from "Aba Reta"', '39.90', 'Acessórios', 'Tailandia', '4.2');
		INSERT INTO produtos (nomedoproduto,valor,segmento,origem,popularidade)
        VALUES ('Relogio Agustinho Carrara Tendencias', '1500.50', 'Acessórios', 'Brazil', '4.2');
        INSERT INTO produtos (nomedoproduto,valor,segmento,origem,popularidade)
        VALUES ('Oculos Turn Down For Watch', '7000', 'Acessórios', 'EUA', '4.2');
        INSERT INTO produtos (nomedoproduto,valor,segmento,origem,popularidade)
        VALUES ('Colar Generation Brazil', '50000', 'Acessórios', 'Brazil', '5.0');
        
        -- Select 
        
        SELECT*FROM produtos;        
        
        -- Condicionais
        
        SELECT*FROM produtos WHERE valor > 500
        
        SELECT*FROM produtos WHERE valor < 500
        
        UPDATE produtos SET popularidade = 2.2 WHERE ID_prod = 3; 
        
