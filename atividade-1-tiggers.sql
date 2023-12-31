CREATE DATABASE ATIVIDADE_TIGGER;

USE ATIVIDADE_TIGGER;

CREATE TABLE Produtos (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  NOME_PRODUTO VARCHAR(255) NOT NULL,
  DATA_VALIDADE DATE NOT NULL
);

DELIMITER //

CREATE TRIGGER tg_validar_data_validade
BEFORE INSERT ON Produtos
FOR EACH ROW
BEGIN
    IF NEW.DATA_VALIDADE < CURDATE() THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Data de validade inválida';
    END IF;
END //

DELIMITER ;

INSERT INTO Produtos (NOME_PRODUTO, DATA_VALIDADE) VALUES ('Café', '2022-02-01');

INSERT INTO Produtos (NOME_PRODUTO, DATA_VALIDADE) VALUES ('Macarrão', '2023-12-31');