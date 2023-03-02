CREATE DATABASE seguradora;

USE seguradora;

CREATE TABLE cliente(
cd_Cliente INT NOT NULL PRIMARY KEY,
id_Nome VARCHAR(100),
ed_Endereco VARCHAR(255)
);

CREATE TABLE apolice(
cd_Apolice INT NOT NULL PRIMARY KEY,
vl_Valor INT NOT NULL
);

CREATE TABLE carro(
id_Carro INT NOT NULL PRIMARY KEY,
rg_Registro INT NOT NULL,
mc_Marca VARCHAR(50)
);

CREATE TABLE acidente(
cd_Acidente INT PRIMARY KEY,
dt_Data DATE,
hr_Hora TIME,
lc_Local VARCHAR(255)
);

INSERT INTO cliente (cd_Cliente,id_Nome,ed_Endereco)
VALUES (1,'Felipe','R=Wali N=8');

INSERT INTO cliente (cd_Cliente,id_Nome,ed_Endereco)
VALUES (3,'Fernando','R=Wali N=66');

INSERT INTO cliente (cd_Cliente,id_Nome,ed_Endereco)
VALUES (2,'Lucas','R=Wali N=77');

INSERT INTO apolice(cd_Apolice,vl_Valor)
VALUES (123,456);

INSERT INTO carro (id_Carro,rg_Registro,mc_Marca)
VALUES (12,22,'VOLVO');

INSERT INTO acidente (cd_Acidente,dt_Data,hr_Hora,lc_Local)
VALUES (12,'2022-12-14','20:12:45','R=WALISSON:N=8');

SHOW DATABASES ;
SELECT *FROM cliente;
SELECT *FROM apolice;
SELECT *FROM carro;
SELECT *FROM acidente;



SELECT * FROM cliente;

SELECT cd_Cliente,id_Nome,ed_Endereco FROM cliente;

SELECT * FROM cliente WHERE ed_Endereco = 'F';

SELECT * FROM cliente;
SELECT * FROM cliente WHERE cd_Cliente < 600;
SELECT * FROM cliente WHERE cd_Cliente > 600;
SELECT * FROM cliente WHERE cd_Cliente <= 600.55;
SELECT * FROM cliente WHERE cd_Cliente >= 600.55;

SELECT * FROM cliente;
SELECT * FROM cliente WHERE id_Nome = 'Lucas' AND cd_Cliente = 1 AND cd_Cliente <= 625;
SELECT * FROM cliente WHERE id_Nome = 'Fernando' OR cd_Cliente >= 40;

SELECT * FROM cliente;
SELECT * FROM cliente WHERE cd_Cliente BETWEEN 40 and 60;
SELECT * FROM cliente WHERE ed_Endereco BETWEEN 'R=Wali N=8' and 'R=Wali N=77';

SELECT * FROM cliente;
SELECT * FROM cliente WHERE id_Nome = 'Fernanda' or id_Nome = 'Maria' or id_Nome = 'Marcelo';
SELECT * FROM cliente WHERE id_Nome IN ('Fernanda', 'Maria', 'Marcelo');
SELECT * FROM cliente WHERE id_Nome NOT IN ('Fernanda', 'Maria', 'Marcelo');

SELECT * FROM cliente;
SELECT * FROM cliente ORDER BY id_Nome ASC;
SELECT * FROM cliente ORDER BY cd_Cliente DESC;
SELECT * FROM cliente ORDER BY cd_Cliente ASC, ed_Endereco DESC;

/*Contagem*/
SELECT COUNT(*) FROM cliente;
SELECT COUNT(*) FROM cliente WHERE cd_Cliente = '1';
SELECT COUNT(DISTINCT id_Nome) FROM cliente;

/*Maximo*/
SELECT MAX(cd_Cliente) FROM cliente;
SELECT MAX(cd_Cliente) FROM cliente WHERE cd_Cliente > 1;
SELECT MAX(cd_Cliente) FROM cliente WHERE cd_Cliente < 3;

/*Minimo*/
SELECT MIN(cd_Cliente) FROM cliente;
SELECT MIN(cd_Cliente) FROM cliente WHERE cd_Cliente != 0;

/*Media*/
SELECT AVG(cd_Cliente) FROM cliente;
SELECT AVG(cd_Cliente) FROM cliente WHERE id_Nome = 'José';

/*Somar*/
SELECT SUM(cd_Cliente) FROM cliente;
SELECT SUM(cd_Cliente) FROM cliente WHERE id_Nome = 'José';


SELECT
	MAX(cd_Cliente) AS Maior_Valor,
	MIN(cd_Cliente) AS Menor_Valor,
 	AVG(cd_Cliente) AS Medias,
	SUM(cd_Cliente) AS Soma
FROM
	cliente
WHERE
	cd_Cliente = 1;
