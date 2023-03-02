CREATE DATABASE construtora;

USE construtora;

CREATE TABLE departamento(
id_departamento INT NOT NULL PRIMARY KEY,
cd_codigo INT NOT NULL,
nm_nome VARCHAR(60) NOT NULL
);
CREATE TABLE projeto(
id_projeto INT NOT NULL PRIMARY KEY,
cd_codigo INT NOT NULL,
nm_nome VARCHAR(60)
);
CREATE TABLE funcionario(
id_funcionario INT NOT NULL PRIMARY KEY,
mt_matricula INT NOT NULL,
nm_nome VARCHAR(60)
);

INSERT INTO departamento (id_departamento,cd_codigo,nm_nome)
VALUES (1,2,'Felipe');
INSERT INTO projeto (id_projeto,cd_codigo,nm_nome)
VALUES (1,2,'Luis');
INSERT INTO funcionario (id_funcionario,mt_matricula,nm_nome)
VALUES (1,2,'Luis Felipe');

INSERT INTO departamento (id_departamento,cd_codigo,nm_nome)
VALUES (2,3,'Lucas');
INSERT INTO projeto (id_projeto,cd_codigo,nm_nome)
VALUES (2,3,'Luisa');
INSERT INTO funcionario (id_funcionario,mt_matricula,nm_nome)
VALUES (2,3,'Henrique Felipe');

SELECT *FROM departamento;
SELECT *FROM projeto;
SELECT *FROM funcionario;

