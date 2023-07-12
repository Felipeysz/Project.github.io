CREATE DATABASE pizzaria;

USE pizzaria;

CREATE TABLE status_de_producao(
idstatus INT NOT NULL PRIMARY KEY,
tp_status VARCHAR(15) NOT NULL
);

CREATE TABLE pedido(
idpedido INT PRIMARY KEY
);
CREATE TABLE pizza(
id_pizza INT PRIMARY KEY
);
CREATE TABLE massas(
id_massas INT PRIMARY KEY,
nm_nomemassas VARCHAR (60)
);
CREATE TABLE bordas (
id_bordas INT PRIMARY KEY,
nm_nomeborda VARCHAR (60)
);
CREATE TABLE pizzasabor(
id_pizzasabor INT PRIMARY KEY
);
CREATE TABLE sabores(
id_sabores INT PRIMARY KEY,
nm_nomesabor VARCHAR (60)
);

DESC status_de_producao;
ALTER TABLE status_de_producao MODIFY COLUMN tp_status  VARCHAR(15);