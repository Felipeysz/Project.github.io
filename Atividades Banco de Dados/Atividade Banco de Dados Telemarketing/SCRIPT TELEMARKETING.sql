CREATE DATABASE telemarketing;

USE telemarketing;

set global general_log = 'on';
set global general_log_file = 'LOGtelemarketing.LOG';

select @@Datadir;

SHOW VARIABLES LIKE "general_log%";
SHOW VARIABLES LIKE "log_output%";
SHOW VARIABLES LIKE "general_log_file%";

CREATE TABLE clientes(
cpf_clientes  VARCHAR(45) PRIMARY KEY NOT NULL,
nome_cliente VARCHAR(45)
);

CREATE TABLE atendentes(
cpf_atendentes VARCHAR(45) PRIMARY KEY NOT NULL,
nome_atendentes VARCHAR(45)
);


CREATE TABLE reclamacao(
idreclamacao INT PRIMARY KEY NOT NULL,
descricao_rec VARCHAR(45),
fk_cpf_clientes VARCHAR (45),
CONSTRAINT fk_cpf_clientes FOREIGN KEY (fk_cpf_clientes) REFERENCES clientes (cpf_clientes)
);


CREATE TABLE telefone(
idtelefone INT PRIMARY KEY NOT NULL,
n_telefone VARCHAR (45),
fk_cpf_atendentes2 VARCHAR(45),
fk_cpf_cliente2 VARCHAR(45),
CONSTRAINT fk_cpf_atendentes2 FOREIGN KEY (fk_cpf_atendentes2) REFERENCES atendentes (cpf_atendentes),
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

create trigger audit_Insert_atendentes after insert on atendentes

for each row
	begin
		insert into audit
        values 
        ('atendentes', 
        'Insert', 
        current_user(),
        now(), 
        new.cpf_atendentes, 
        null, 
		concat ('CPFatendentes: ', new.cpf_atendentes,' |Nomeatendentes: ', new.nome_atendentes)
        );  
	end $$ 


DELIMITER $$

create trigger audit_Update_atendentes after update on atendentes

for each row
	begin
		insert into audit values (
        'atendentes',
        'Update',
        current_user(),
        now(),
        old.cpf_atendentes,
        concat('CPFatendentes:', old.cpf_atendentes,' | Nomeatendentes: ', old.nome_atendentes),
        concat ('CPFatendentes: ', new.cpf_atendentes,' |Nomeatendentes: ', new.nome_atendentes)
        );
	end
    $$
    
    
DELIMITER $$

create trigger audit_Delete_atendentes after delete on atendentes

for each row
	begin
		insert into audit values (
        'cpfatendentes',
        'Delete',
        current_user(),
        now(),
        old.cpf_atendentes,
        concat('CPFatendentes:', old.cpf_atendentes,' | Nomeatendentes: ', old.cpf_atendentes),
        null);
	end
    $$
    

    
    
        DELIMITER $$

create trigger audit_Insert_reclamacao after insert on reclamacao

for each row
	begin
		insert into audit
        values 
        ('reclamacao', 
        'Insert', 
        current_user(),
        now(), 
        new.idreclamacao, 
        null, 
		concat ('reclamacao: ', new.idreclamacao,'|Descricaoreclamacao: ', new.descricao_rec)
        );  
	end $$ 

   
DELIMITER $$

create trigger audit_Update_reclamacao after update on reclamacao

for each row
	begin
		insert into audit values (
        'reclamacao',
        'Update',
        current_user(),
        now(),
        old.idreclamacao,
        concat('reclamacao:', old.idreclamacao,' |Descricaoreclamacao: ', old.descricao_rec),
        concat ('reclamacao: ', new.idreclamacao,'|Descricaoreclamacao: ', new.descricao_rec)
        );
	end
    $$
    

DELIMITER $$

create trigger audit_Delete_reclamacao after delete on reclamacao

for each row
	begin
		insert into audit values (
        'reclamacao',
        'Delete',
        current_user(),
        now(),
        old.idreclamacao,
        concat('reclamacao:', old.idreclamacao,' | DESCRICAOreclamacao: ', old.descricao_rec),
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
		concat ('TELEFONE: ', new.idtelefone,'|NUMEROTELEFONE: ', new.n_telefone)
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
        concat('TELEFONE:', old.idtelefone,' |NUMEROTELEFONDE: ', old.n_telefone),
        concat ('TELEFONE: ', new.idtelefone,'|NUMEROTELEFONE: ', new.n_telefone)
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
        concat('TELEFONE:', old.idtelefone,' |NUMEROTELEFONDE: ', old.n_telefone),
        null);
	end
    $$
    
    
    
    
    
    
    
    
    
    
    
    
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


INSERT INTO atendentes(
	cpf_atendentes,nome_atendentes
    )values
	('000.000.000-00','Lucas Henrique'),('000.000.000-01','Lucas Henrique1'),
    ('000.000.000-02','Lucas Henrique2'),('000.000.000-03','Lucas Henrique3'),
    ('000.000.000-04','Lucas Henrique4')
;



insert into reclamacao(
	idreclamacao,descricao_rec,fk_cpf_clientes
)values(
	1,'...','000.000.000-00'
);

insert into reclamacao(
	idreclamacao,descricao_rec,fk_cpf_clientes
)values(
	2,'...','111.111.111-11'
);

insert into reclamacao(
	idreclamacao,descricao_rec,fk_cpf_clientes
)values(
	3,'...','222.222.222-22'
);

insert into reclamacao(
	idreclamacao,descricao_rec,fk_cpf_clientes
)values(
	4,'...','333.333.333-33'
);

insert into reclamacao(
	idreclamacao,descricao_rec,fk_cpf_clientes
)values(
	5,'...','444.444.444-44'
);



    
    insert into telefone(
	idtelefone,n_telefone,fk_cpf_atendentes2
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
    

    SELECT * FROM reclamacao;
	SELECT * FROM atendentes;
	SELECT * FROM telefone;
    SELECT * FROM clientes;
	SELECT * FROM audit;
    
