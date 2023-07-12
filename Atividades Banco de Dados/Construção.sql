create database construcao2;

use construcao2;

create table funcionarios(
id_funcionarios int not null primary key,
nome varchar(255) not null,
salario int not null,
telefone int
);

create table cliente(
id_cliente int not null primary key,
nome varchar (100),
endereco varchar(255),
telefone INT NOT NULL
);

create table vendas(
id_vendas int not null primary key,
id_funcionario int,
id_cliente int,
dt_data date,
lc_local varchar(150),
rf_referencia varchar(255)
);

create table produtos(
id_produtos int not null primary key,
nome varchar(255),
vl_valor int,
qt_quantidade int
);

create table teste(
id_produtos int not null primary key,
nome varchar(255),
vl_valor int,
qt_quantidade int
);

INSERT INTO funcionarios (id_funcionarios,nome,salario,telefone)
VALUES (1,'Felipe',1234,986581072);

INSERT INTO cliente (id_cliente,nome,endereco,telefone)
VALUES (1,'Luis','RuaSemSaidaNumero2',986581072);

INSERT INTO vendas (id_vendas,id_funcionario,id_cliente,dt_data,lc_local,rf_referencia)
VALUES (1,2,3,'2020-12-21','RuaComSaidaNumero24','teste');

INSERT INTO produtos (id_produtos,nome,vl_valor,qt_quantidade)
VALUES (1,'Luis Felipe',1586,17);

INSERT INTO produtos (id_produtos,nome,vl_valor,qt_quantidade)
VALUES (2,'Luis Felipe',1586,17);

INSERT INTO produtos (id_produtos,nome,vl_valor,qt_quantidade)
VALUES (3,'Luis22 Felipe',1586,17);

INSERT INTO teste (id_produtos,nome,vl_valor,qt_quantidade)
VALUES (1,'Luis22Felipe',1586,17);

INSERT INTO teste (id_produtos,nome,vl_valor,qt_quantidade)
VALUES (2,'Luis22 Felipe',1586,17);
INSERT INTO teste (id_produtos,nome,vl_valor,qt_quantidade)
VALUES (3,'Luis22  Felipe',1586,17);



SELECT *FROM funcionarios; /*Tabela */
UPDATE funcionarios  /*Tabela */
SET nome = 'Gustavo'  /* Coluna e o que vai Mudar dps do =*/
WHERE id_funcionarios=1;  /* id_funcionarios sera a coluna ultilizada para pesquisar tipo um cpf*/

SELECT nome , vl_valor from produtos
WHERE id_produtos=3;

SELECT * from produtos
WHERE id_produtos=1;

SELECT * from produtos
WHERE nome='Luis22 Felipe';

delete from teste /* TESTE É A TABELA QUE SERA USADA PARA DELETAR ALGUMA INFORMAÇÂO*/
where id_produtos=3; /* 3 do ID_PRODUTOS É USADO COMO INFORMAÇÃO ASSIM É DELETADO A LINHA*/

SELECT * from teste /* PESQUISA DE TABELA (TESTE È A TABELA)*/

