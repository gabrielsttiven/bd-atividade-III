CREATE DATABASE ATIVIDADE_CINCO;

USE ATIVIDADE_CINCO;

CREATE TABLE Pedidos (
  NUMERO_PEDIDO INT AUTO_INCREMENT PRIMARY KEY,
  SITUACAO VARCHAR(255) NOT NULL
);

INSERT INTO Pedidos (SITUACAO) VALUES
('Pendente'),
('Entregue'),
('Pendente'),
('Enviado'),
('Pendente');

CREATE VIEW vw_pedidos_pendentes AS
SELECT NUMERO_PEDIDO
FROM Pedidos
WHERE SITUACAO = 'Pendente';

SELECT * FROM vw_pedidos_pendentes;
