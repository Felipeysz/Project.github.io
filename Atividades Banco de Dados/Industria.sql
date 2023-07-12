create database industria;

use industria;

create table pecas(
id_Pecas INT NOT NULL PRIMARY KEY,
ps_Peso INT NOT NULL,
cl_Cor VARCHAR (15)
);

create table deposito(
id_Deposito INT NOT NULL PRIMARY KEY,
ed_Endereco VARCHAR(150)
);

create table fornecedor(
id_Fornecedor INT NOT NULL PRIMARY KEY,
ed_Endereco VARCHAR(150)
);

create table projeto(
id_Projeto INT NOT NULL PRIMARY KEY,
oc_Orcamento int NOT NULL
);

create table funcionario(
id_Funcionario INT NOT NULL PRIMARY KEY,
sl_Salario INT NOT NULL,
tl_Telefone INT NOT NULL
);

create table departamento(
id_Departamento INT NOT NULL PRIMARY KEY,
nm_Numero INT NOT NULL,
st_Setor INT NOT NULL
);


INSERT INTO pecas (id_Pecas,ps_Peso,cl_Cor)
VALUES (1,22,'Vermelho');

INSERT INTO deposito (id_Deposito,ed_Endereco)
VALUES (1,'Rua:SEM SAIDA:Numero:666');

INSERT INTO fornecedor (id_Fornecedor,ed_Endereco)
VALUES (12,'RUA COM SAIDA:Numero:667');

INSERT INTO projeto (id_Projeto,oc_Orcamento)
VALUES (13,123);

INSERT INTO funcionario (id_Funcionario,sl_Salario,tl_Telefone)
VALUES (12,1234,987146520);

INSERT INTO departamento (id_Departamento,nm_Numero,st_Setor)
VALUES (54,1234,2);

SELECT *FROM pecas;
SELECT *FROM deposito;
SELECT *FROM fornecedor;
SELECT *FROM projeto;
SELECT *FROM funcionario;
SELECT *FROM departamento;
