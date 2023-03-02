create database supermercado;
use supermercado;

create table funcionarios(
id_funcionarios int not null primary key,
matricula int,
nome varchar(255) not null,
salario int not null,
telefone int,
cargo varchar(50),
dt_nasc date
);

create table fornecedores(
id_fornecedores int not null primary key,
codigo int,
nome_empres varchar(255) not null,
endereco varchar(150),
telefone int,
ps_contate varchar(155)
);

create table vendas(
id_vendas int not null primary key,
codigo int,
cd_funcionario int not null,
cd_empresa int not null,
dt_data date
);

create table produtos(
id_produtos int not null primary key,
cd_codigo int,
dc_descricao Varchar(150),
vl_valor int not null,
qt_quant int not null
);

INSERT INTO funcionarios (id_funcionarios,matricula,nome,salario,telefone,cargo,dt_nasc)
VALUES (1,123,'Felipe',1353,986581072,'Presidencial','2000-11-15');

INSERT INTO funcionarios (id_funcionarios,matricula,nome,salario,telefone,cargo,dt_nasc)
VALUES (2,112,'Lucas',1353,986581072,'Hibrido','2000-11-18');

INSERT INTO funcionarios (id_funcionarios,matricula,nome,salario,telefone,cargo,dt_nasc)
VALUES (4,154,'Henrique',1353,986581072,'Online','2000-11-25');

INSERT INTO funcionarios (id_funcionarios,matricula,nome,salario,telefone,cargo,dt_nasc)
VALUES (3,121,'Fernando',1353,986581072,'Semi-Presencial','2000-11-11');

INSERT INTO fornecedores (id_fornecedores,codigo,nome_empres,endereco,telefone,ps_contate)
VALUES (1,123,'Slix','R:SEMSAIDA',986581072,986850202);

INSERT INTO vendas (id_vendas,codigo,cd_funcionario,cd_empresa,dt_data)
VALUES (1,123,0203,8576,'2022-06-22');

INSERT INTO produtos (id_produtos,cd_codigo,dc_descricao,vl_valor,qt_quant)
VALUES (1,123,'USO SOMENTE EM TEMPERATURA AMBIENTE',1234,55);


SELECT * FROM funcionarios;

SELECT matricula, salario, telefone FROM funcionarios;

SELECT * FROM funcionarios WHERE salario = 1353;

SELECT * FROM funcionarios;
SELECT * FROM funcionarios WHERE salario < 1353;
SELECT * FROM funcionarios WHERE salario > 600;
SELECT * FROM funcionarios WHERE salario <= 600.55;
SELECT * FROM funcionarios WHERE salario >= 600.55;

SELECT * FROM funcionarios;
SELECT * FROM funcionarios WHERE cargo = 'Presencial' AND matricula = 123 AND salario <= 1353;
SELECT * FROM funcionarios WHERE cargo = 'Presencial' OR id_funcionario >= 1;

SELECT * FROM funcionarios;
SELECT * FROM funcionarios WHERE salario BETWEEN 1220 and 1440;
SELECT * FROM funcionarios WHERE dt_nasc BETWEEN '2000-11-22' and '2000-11-30';

SELECT * FROM funcionarios;
SELECT * FROM funcionarios WHERE nome = 'Felipe' or nome = 'Maria' or nome = 'Marcelo';
SELECT * FROM funcionarios WHERE nome IN ('Felipe', 'Lucas', 'Henrique');
SELECT * FROM funcionarios WHERE nome NOT IN ('Felipe', 'Lucas', 'Henrique');

SELECT * FROM funcionarios;
SELECT * FROM funcionarios ORDER BY nome ASC;
SELECT * FROM funcionarios ORDER BY salario DESC;
SELECT * FROM funcionarios ORDER BY salario ASC, matricula DESC;


/*Contagem*/
SELECT COUNT(*) FROM funcionarios;
SELECT COUNT(*) FROM funcionarios WHERE cargo = 'Presidencial';
SELECT COUNT(DISTINCT nome) FROM funcionarios;

/*Maximo*/
SELECT MAX(salario) FROM funcionarios;
SELECT MAX(salario) FROM funcionarios WHERE matricula > 123;
SELECT MAX(salario) FROM funcionarios WHERE matricula < 123;

/*Minimo*/
SELECT MIN(salario) FROM funcionarios;
SELECT MIN(salario) FROM funcionarios WHERE id_funcionarios != 0;

/*Media*/
SELECT AVG(salario) FROM funcionarios;
SELECT AVG(salario) FROM funcionarios WHERE nome = 'José';

/*Somar*/
SELECT SUM(salario) FROM funcionarios;
SELECT SUM(salario) FROM funcionarios WHERE nome = 'José';


SELECT
	MAX(salario) AS Maior_Valor,
	MIN(salario) AS Menor_Valor,
	AVG(salario) AS Medias,
	SUM(salario) AS Soma
FROM
	funcionarios
WHERE
	id_funcionario = 1;
