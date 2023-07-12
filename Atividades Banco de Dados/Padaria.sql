create database padaria;
use padaria;

set global general_log = 'on';
set global general_log_file = 'padariagostosa.LOG';

select @@Datadir;

SHOW VARIABLES LIKE "general_log%";
SHOW VARIABLES LIKE "log_output%";
SHOW VARIABLES LIKE "general_log_file%";

CREATE TABLE clientes(
cpf_clientes  VARCHAR(45) PRIMARY KEY NOT NULL,
nome_cliente VARCHAR(45)
);

CREATE TABLE funcionarios(
cpf_funcionarios VARCHAR(45) PRIMARY KEY NOT NULL,
nome_funcionarios VARCHAR(45)
);


CREATE TABLE pedidos(
idpedidos INT PRIMARY KEY NOT NULL,
descricao_ped VARCHAR(45),
fk_cpf_clientes VARCHAR (45),
CONSTRAINT fk_cpf_clientes FOREIGN KEY (fk_cpf_clientes) REFERENCES clientes (cpf_clientes)
);

SELECT * FROM PEDIDOS;

CREATE TABLE paes(
idpaes INT PRIMARY KEY NOT NULL,
sabor_paes VARCHAR(45),
fk_idpedidos int,
CONSTRAINT fk_idpedidos FOREIGN KEY (fk_idpedidos) REFERENCES pedidos (idpedidos)
);

CREATE TABLE vendas(
idvendas INT PRIMARY KEY NOT NULL,
dt_date DATE,
fk_cpf_funcionario VARCHAR(45),
fk_idpedidos2 INT,
CONSTRAINT fk_idpedidos2 FOREIGN KEY (fk_idpedidos2) REFERENCES pedidos (idpedidos),
CONSTRAINT fk_cpf_funcionario FOREIGN KEY (fk_cpf_funcionario) REFERENCES funcionarios (cpf_funcionarios)
);

CREATE TABLE telefone(
idtelefone INT PRIMARY KEY NOT NULL,
n_telefone VARCHAR (45),
fk_cpf_funcionarios2 VARCHAR(45),
fk_cpf_cliente2 VARCHAR(45),
CONSTRAINT fk_cpf_funcionarios2 FOREIGN KEY (fk_cpf_funcionarios2) REFERENCES funcionarios (cpf_funcionarios),
CONSTRAINT fk_cpf_cliente2 FOREIGN KEY (fk_cpf_cliente2) REFERENCES clientes (cpf_clientes)
);

create table audit(
tabela varchar(100),
acao varchar (500),
usuario varchar(50),
data_hora datetime,
chave varchar(255),
antes varchar (4000),
depois varchar (4000)
);


DELIMITER $$

create trigger audit_Insert_clientes after insert on clientes

for each row
	begin
		insert into audit
        values 
        ('clientes', 
        'Insert', 
        current_user(),
        now(), 
        new.cpf_clientes, 
        null, 
		concat ('CPFClientes: ', new.cpf_clientes,' |NomeCliente: ', new.nome_cliente)
        );  
	end $$ 


DELIMITER $$

create trigger audit_Update_clientes after update on clientes

for each row
	begin
		insert into audit values (
        'clientes',
        'Update',
        current_user(),
        now(),
        old.cpf_clientes,
        concat('CPFcliente:', old.cpf_clientes,' | NomeCliente: ', old.nome_cliente),
        concat ('cpfcliente: ', new.cpf_clientes,' |NomeCliente: ', new.nome_cliente)
        );
	end
    $$
    
    
DELIMITER $$

create trigger audit_Delete_clientes after delete on clientes

for each row
	begin
		insert into audit values (
        'cpfcliente',
        'Delete',
        current_user(),
        now(),
        old.cpf_clientes,
        concat('CPFclientes:', old.cpf_clientes,' | NomeCliente: ', old.nome_cliente),
        null);
	end
    $$
    

    DELIMITER $$

create trigger audit_Insert_funcionarios after insert on funcionarios

for each row
	begin
		insert into audit
        values 
        ('funcionarios', 
        'Insert', 
        current_user(),
        now(), 
        new.cpf_funcionarios, 
        null, 
		concat ('CPFFuncionarios: ', new.cpf_funcionarios,' |NomeFuncionarios: ', new.nome_funcionarios)
        );  
	end $$ 


DELIMITER $$

create trigger audit_Update_funcionarios after update on funcionarios

for each row
	begin
		insert into audit values (
        'funcionarios',
        'Update',
        current_user(),
        now(),
        old.cpf_funcionarios,
        concat('CPFFuncionarios:', old.cpf_funcionarios,' | NomeFuncionarios: ', old.nome_funcionarios),
        concat ('CPFFuncionarios: ', new.cpf_funcionarios,' |NomeFuncionarios: ', new.nome_funcionarios)
        );
	end
    $$
    
    
DELIMITER $$

create trigger audit_Delete_funcionarios after delete on funcionarios

for each row
	begin
		insert into audit values (
        'cpffuncionarios',
        'Delete',
        current_user(),
        now(),
        old.cpf_funcionarios,
        concat('CPFFuncionarios:', old.cpf_funcionarios,' | NomeFuncionarios: ', old.cpf_funcionarios),
        null);
	end
    $$
    
    
    DELIMITER $$

create trigger audit_Insert_paes after insert on paes

for each row
	begin
		insert into audit
        values 
        ('paes', 
        'Insert', 
        current_user(),
        now(), 
        new.idpaes, 
        null, 
		concat ('IDpaes: ', new.idpaes,'|SaborPaes: ', new.sabor_paes)
        );  
	end $$ 

   

DELIMITER $$

create trigger audit_Update_paes after update on paes

for each row
	begin
		insert into audit values (
        'paes',
        'Update',
        current_user(),
        now(),
        old.idpaes,
        concat('PAES:', old.idpaes,' |SaborPAES: ', old.sabor_paes),
        concat ('PAES: ', new.idpaes,' |SaborPAES: ', new.sabor_paes)
        );
	end
    $$
    
DELIMITER $$

create trigger audit_Delete_paes after delete on paes

for each row
	begin
		insert into audit values (
        'cpfcliente',
        'Delete',
        current_user(),
        now(),
        old.idpaes,
        concat('PAES:', old.idpaes,' | SaborPAES: ', old.sabor_paes),
        null);
	end
    $$
    
    
        DELIMITER $$

create trigger audit_Insert_pedidos after insert on pedidos

for each row
	begin
		insert into audit
        values 
        ('pedidos', 
        'Insert', 
        current_user(),
        now(), 
        new.idpedidos, 
        null, 
		concat ('PEDIDOS: ', new.idpedidos,'|DescricaoPedidos: ', new.descricao_ped)
        );  
	end $$ 

   
DELIMITER $$

create trigger audit_Update_pedidos after update on pedidos

for each row
	begin
		insert into audit values (
        'pedidos',
        'Update',
        current_user(),
        now(),
        old.idpedidos,
        concat('PEDIDOS:', old.idpedidos,' |DescricaoPedidos: ', old.descricao_ped),
        concat ('PEDIDOS: ', new.idpedidos,'|DescricaoPedidos: ', new.descricao_ped)
        );
	end
    $$
    

DELIMITER $$

create trigger audit_Delete_pedidos after delete on pedidos

for each row
	begin
		insert into audit values (
        'pedidos',
        'Delete',
        current_user(),
        now(),
        old.idpedidos,
        concat('PEDIDOS:', old.idpedidos,' | DESCRICAOPEDIDOS: ', old.descricao_ped),
        null);
	end
    $$
    

DELIMITER $$

create trigger audit_Insert_telefone after insert on telefone

for each row
	begin
		insert into audit
        values 
        ('telefone', 
        'Insert', 
        current_user(),
        now(), 
        new.idtelefone, 
        null, 
		concat ('TELEFONE: ', new.idtelefone,'|NUMEROTELEFONE: ', new.n.telefone)
        );  
	end $$ 

   
DELIMITER $$

create trigger audit_Update_telefone after update on telefone

for each row
	begin
		insert into audit values (
        'telefone',
        'Update',
        current_user(),
        now(),
        old.idtelefone,
        concat('TELEFONE:', old.idtelefone,' |NUMEROTELEFONDE: ', old.n.telefone),
        concat ('TELEFONE: ', new.idtelefone,'|NUMEROTELEFONE: ', new.n.telefone)
        );
	end
    $$
    

DELIMITER $$

create trigger audit_Delete_telefone after delete on telefone

for each row
	begin
		insert into audit values (
        'telefone',
        'Delete',
        current_user(),
        now(),
        old.idtelefone,
        concat('TELEFONE:', old.idtelefone,' |NUMEROTELEFONDE: ', old.n.telefone),
        null);
	end
    $$
    
    
DELIMITER $$

create trigger audit_Insert_vendas after insert on vendas

for each row
	begin
		insert into audit
        values 
        ('vendas', 
        'Insert', 
        current_user(),
        now(), 
        new.idvendas, 
        null, 
		concat ('VENDAS: ', new.idvendas,'|DATA: ', new.dt_date)
        );  
	end $$ 

   
DELIMITER $$

create trigger audit_Update_vendas after update on telefone

for each row
	begin
		insert into audit values (
        'vendas',
        'Update',
        current_user(),
        now(),
        old.idtelefone,
        concat('VENDAS: ', old.idvendas,'|DATA: ', old.dt_date),
        concat ('VENDAS: ', new.idvendas,'|DATA: ', new.dt_date)
        );
	end
    $$
    
DELIMITER $$

create trigger audit_Delete_vendas after delete on telefone

for each row
	begin
    
		insert into audit values (
        'vendas',
        'Delete',
        current_user(),
        now(),
        old.idvendas,
        concat('VENDAS: ', old.idvendas,'|DATA: ', old.dt_date),
        null);
	end
    $$
    

							/*INSERTS INTO*/
INSERT INTO clientes(
	cpf_clientes,nome_cliente
)values(
	'000.000.000-00','Luis Felipe'
);

INSERT INTO clientes(
	cpf_clientes,nome_cliente
)values(
	'111.111.111-11','Luis Felipe2'
);

INSERT INTO clientes(
	cpf_clientes,nome_cliente
)values(
	'222.222.222-22','Luis Felipe3'
);

INSERT INTO clientes(
	cpf_clientes,nome_cliente
)values(
	'333.333.333-33','Luis Felipe4'
);

INSERT INTO clientes(
	cpf_clientes,nome_cliente
)values(
	'444.444.444-44','Luis Felipe5'
);


INSERT INTO funcionarios(
	cpf_funcionarios,nome_funcionarios
    )values
	('000.000.000-00','Lucas Henrique'),('000.000.000-01','Lucas Henrique1'),
    ('000.000.000-02','Lucas Henrique2'),('000.000.000-03','Lucas Henrique3'),
    ('000.000.000-04','Lucas Henrique4')
;



insert into pedidos(
	idpedidos,descricao_ped,fk_cpf_clientes
)values(
	1,'...','000.000.000-00'
);

insert into pedidos(
	idpedidos,descricao_ped,fk_cpf_clientes
)values(
	2,'...','111.111.111-11'
);

insert into pedidos(
	idpedidos,descricao_ped,fk_cpf_clientes
)values(
	3,'...','222.222.222-22'
);

insert into pedidos(
	idpedidos,descricao_ped,fk_cpf_clientes
)values(
	4,'...','333.333.333-33'
);

insert into pedidos(
	idpedidos,descricao_ped,fk_cpf_clientes
)values(
	5,'...','444.444.444-44'
);


insert into paes(
	idpaes, sabor_paes,
    fk_idpedidos
)values(
	1,'...',1
);

insert into paes(
	idpaes, sabor_paes,
    fk_idpedidos
)values(
	2,'...',2
);

insert into paes(
	idpaes, sabor_paes,
    fk_idpedidos
)values(
	3,'...',3
);

insert into paes(
	idpaes, sabor_paes,
    fk_idpedidos
)values(
	4,'...',4
);

insert into paes(
	idpaes, sabor_paes,
    fk_idpedidos
)values(
	5,'...',5
);

insert into vendas(
	idvendas, dt_date, fk_cpf_funcionario, fk_idpedidos2
)values
	(1,'2000-02-11','000.000.000-00',1),
	(2,'2000-02-11','000.000.000-01',2),
    (3,'2000-02-11','000.000.000-02',3),
    (4,'2000-02-11','000.000.000-03',4),
    (5,'2000-02-11','000.000.000-04',5);
    
    
    insert into telefone(
	idtelefone,n_telefone,fk_cpf_funcionarios2
)values
	(1,'986581070','000.000.000-00'),
    (2,'986581071','000.000.000-01'),
    (3,'986581073','000.000.000-02'),
    (4,'986581074','000.000.000-03'),
    (5,'986581075','000.000.000-04')
    ;
    
        insert into telefone(
	idtelefone,n_telefone,fk_cpf_cliente2
)values
	(6,'986581070','000.000.000-00'),
    (7,'986581071','111.111.111-11'),
    (8,'986581073','222.222.222-22'),
    (9,'986581074','333.333.333-33'),
    (10,'986581075','444.444.444-44')
    ;
    

    SELECT * FROM pedidos;
	SELECT * FROM funcionarios;
	SELECT * FROM vendas;
	SELECT * FROM paes;
	SELECT * FROM telefone;
    SELECT * FROM clientes;
	SELECT * FROM audit;