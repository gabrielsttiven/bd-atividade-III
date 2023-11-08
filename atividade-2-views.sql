CREATE DATABASE ATIVIDADE_DOIS;

USE ATIVIDADE_DOIS;

CREATE TABLE Produtos (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  NOME_PRODUTO VARCHAR(255) NOT NULL,
  QUANT_ESTOQUE INT NOT NULL
);

INSERT INTO Produtos (NOME_PRODUTO, QUANT_ESTOQUE) VALUES
('Café', 3),
('Sabão', 8),
('Macarrão', 2),
('Maça', 6),
('Amendoim', 1);

CREATE VIEW vw_estoque_insuficiente AS
SELECT NOME_PRODUTO
FROM Produtos
WHERE QUANT_ESTOQUE < 5;

SELECT * FROM vw_estoque_insuficiente;
