CREATE DATABASE VDELETRIC;

USE VDELETRIC;

CREATE TABLE produto(
idProduto INT NOT NULL AUTO_INCREMENT,
Nome_Produto VARCHAR(45) NULL,
Preco_Normal DECIMAL (10,2) NULL,
Preco_Desconto DECIMAL (10,2) NULL,
PRIMARY KEY (idProduto)
);


SELECT * FROM produto;

CREATE TRIGGER tr_desconto BEFORE INSERT ON produto
FOR EACH ROW
SET NEW.Preco_Desconto = (NEW.Preco_Normal * 0.90);


INSERT INTO produto (Nome_Produto,Preco_Normal) VALUES ('Monitor',350.00);
INSERT INTO produto (Nome_Produto,Preco_Normal) VALUES ('Mouse',20.00);
INSERT INTO produto (Nome_Produto,Preco_Normal) VALUES ('Teclado',50.00);
DROP TABLE produto;

CREATE USER LFelipe@'172.26.0.1' identified by '1234';
CREATE USER Felipe@'localhost' identified by '1234';
CREATE USER maria@'222.222.222.222' identified by '1234';
CREATE USER lucas@'%' identified by '1234';
CREATE USER joao@'111.111.111.111' identified by '1234';

SELECT * FROM mysql.user;

/* ALTERANDO REGISTROS DE USUARIO */
/*1-SENHA ANTIGA = 1234*/
set password for LFelipe@'172.26.0.1' = '4321';
/*2-SENHA ANTIGA = 4321*/
alter user LFelipe@'172.26.0.1' identified by 'abcd';






