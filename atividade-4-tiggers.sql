CREATE DATABASE ATIVIDADE_TIGGER_QUATRO;

USE ATIVIDADE_TIGGER_QUATRO;

CREATE TABLE tb_funcionarios (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  NOME VARCHAR(255),
  CARGO VARCHAR(255)
);

CREATE TABLE tb_funcionarios_demitidos (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  NOME VARCHAR(255),
  CARGO VARCHAR(255)
);

DELIMITER //

CREATE TRIGGER tg_registrar_exclusao_funcionario
AFTER DELETE ON tb_funcionarios
FOR EACH ROW
BEGIN
    INSERT INTO tb_funcionarios_demitidos (NOME, CARGO)
    VALUES (OLD.NOME, OLD.CARGO);
END //

DELIMITER ;


INSERT INTO tb_funcionarios (NOME, CARGO) VALUES ('Gabriel', 'Escritor');
INSERT INTO tb_funcionarios (NOME, CARGO) VALUES ('Daniel', 'Administrador');

DELETE FROM tb_funcionarios WHERE id = 1;

SELECT * FROM tb_funcionarios_demitidos;
