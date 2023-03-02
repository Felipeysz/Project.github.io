create database if not exists u;
use u;
CREATE TABLE ALUNO (
    sexo char(1),
    idade int,
    data_inscricao_curso date,
    telefone varchar(20),
    valor_pago_curso float,
    ativo_sn int,
    endereco text,
    nome varchar(25)
);

insert into aluno(
	sexo, idade, data_inscricao_curso, telefone, valor_pago_curso,
    ativo_sn, endereco, nome
)values(
	'M', 55, '2018-12-01', '11 5555-2222', 645.22, 
    1, 'Avenida Paulista, 1500, ap315 - São Paulo - SP', 'João'
);

insert into aluno(
	data_inscricao_curso, telefone, valor_pago_curso,
    ativo_sn, endereco, nome, 
    sexo, idade
)values(
	'2018-11-01', '11 3333-2222', 589.12, 
    1, 'Rua Francisco Sá, 10 - Belo Horizonte - MG', 'Fernanda', 
    'F', 30
);


insert into aluno(
	data_inscricao_curso, telefone, valor_pago_curso,
    ativo_sn, endereco, nome, 
    sexo, idade
)values(
	'2018-12-02', '11 3333-7777', 600.55, 
    0, 'Avenida Dom Manuel, 300 - Fortaleza - CE', 'José', 
    'M', 29
);


insert into aluno(
	data_inscricao_curso, telefone, valor_pago_curso,
    ativo_sn, endereco, nome, 
    sexo, idade
)values(
	'2018-12-02', '11 7777-7777', 655.45, 
    1, 'Rua Miramar, 1200, ap112 - Natal - RN', 'Maria', 
    'F', 42
);


insert into aluno(
	data_inscricao_curso, telefone, valor_pago_curso,
    ativo_sn, endereco, nome, 
    sexo, idade
)values(
	'2018-11-15', '11 1111-7777', 612.99, 
    1, 'Rua João de Abreu, 650 - Goiânia - GO', 'Marcelo', 
    'M', 37
);

insert into aluno(
	data_inscricao_curso, telefone, valor_pago_curso,
    ativo_sn, endereco, nome, 
    sexo, idade
)values(
	'2018-11-15', '71 98888-8888', 612.99, 
    1, 'Avenida santos dumond, 1500 - Bahia - BA', 'João', 
    'M', 55
);

insert into aluno(
	data_inscricao_curso, telefone, valor_pago_curso,
    ativo_sn, endereco, nome, 
    sexo, idade
)values(
	'2018-11-15', '71 99999-9999', 589.12, 
    1, 'Rua Antonio brito, 20 - Bahia - BA', 'Fernanda', 
    'F', 30
);

SELECT * FROM aluno;

SELECT idade, telefone, nome FROM aluno;

SELECT * FROM aluno WHERE sexo = 'F';

SELECT * FROM aluno;
SELECT * FROM aluno WHERE valor_pago_curso < 600;
SELECT * FROM aluno WHERE valor_pago_curso > 600;
SELECT * FROM aluno WHERE valor_pago_curso <= 600.55;
SELECT * FROM aluno WHERE valor_pago_curso >= 600.55;

SELECT * FROM aluno;
SELECT * FROM aluno WHERE sexo = 'M' AND ativo_sn = 1 AND valor_pago_curso <= 625;
SELECT * FROM aluno WHERE sexo = 'F' OR idade >= 40;

SELECT * FROM aluno;
SELECT * FROM aluno WHERE idade BETWEEN 40 and 60;
SELECT * FROM aluno WHERE data_inscricao_curso BETWEEN '2018-11-01' and '2018-11-30';

SELECT * FROM aluno;
SELECT * FROM aluno WHERE nome = 'Fernanda' or nome = 'Maria' or nome = 'Marcelo';
SELECT * FROM aluno WHERE nome IN ('Fernanda', 'Maria', 'Marcelo');
SELECT * FROM aluno WHERE nome NOT IN ('Fernanda', 'Maria', 'Marcelo');

SELECT * FROM aluno;
SELECT * FROM aluno ORDER BY nome ASC;
SELECT * FROM aluno ORDER BY valor_pago_curso DESC;
SELECT * FROM aluno ORDER BY sexo ASC, idade DESC;

SELECT * FROM aluno;
ALTER TABLE aluno ADD id INT AUTO_INCREMENT PRIMARY KEY;

/*Contagem*/
SELECT COUNT(*) FROM aluno;
SELECT COUNT(*) FROM aluno WHERE sexo = 'F';
SELECT COUNT(DISTINCT nome) FROM aluno;

/*Maximo*/
SELECT MAX(valor_pago_curso) FROM aluno;
SELECT MAX(valor_pago_curso) FROM aluno WHERE idade > 40;
SELECT MAX(valor_pago_curso) FROM aluno WHERE idade < 40;

/*Minimo*/
SELECT MIN(valor_pago_curso) FROM aluno;
SELECT MIN(valor_pago_curso) FROM aluno WHERE ativo_sn != 0;

/*Media*/
SELECT AVG(valor_pago_curso) FROM aluno;
SELECT AVG(valor_pago_curso) FROM aluno WHERE nome = 'José';

/*Somar*/
SELECT SUM(valor_pago_curso) FROM aluno;
SELECT SUM(valor_pago_curso) FROM aluno WHERE nome = 'José';


SELECT
	MAX(valor_pago_curso) AS Maior_Valor,
	MIN(valor_pago_curso) AS Menor_Valor,
	AVG(valor_pago_curso) AS Medias,
	SUM(valor_pago_curso) AS Soma
FROM
	aluno
WHERE
	ativo_sn = 1;