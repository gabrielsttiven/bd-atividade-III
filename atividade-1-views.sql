CREATE DATABASE ATIVIDADE_UM;

USE ATIVIDADE_UM;

CREATE TABLE Funcionarios (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  NOME VARCHAR(255) NOT NULL,
  CARGO VARCHAR(255) NOT NULL,
  DEPARTAMENTO VARCHAR(255) NOT NULL
);

INSERT INTO Funcionarios (NOME, CARGO, DEPARTAMENTO) VALUES
('Gabriel', 'Operador', 'Administrativo'),
('Carlos', 'Gerente', 'Administrativo'),
('Jessica', 'Assistente', 'Vendas'),
('Daniel', 'Assistente', 'Administrativo');


CREATE VIEW vw_funcionarios_departamento AS
SELECT NOME, CARGO
FROM Funcionarios
WHERE DEPARTAMENTO = 'Administrativo';

SELECT * FROM vw_funcionarios_departamento;