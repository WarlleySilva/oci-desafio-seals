-- dump.sql
-- Banco: seals_db
CREATE DATABASE IF NOT EXISTS seals_db;
USE seals_db;

CREATE TABLE IF NOT EXISTS produtos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  preco DECIMAL(10,2),
  criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO produtos (nome, preco) VALUES 
('Produto A', 99.90),
('Produto B', 149.50),
('Produto C', 79.99);
