use universidade_u;

create table audit(
tabela varchar(100),
acao varchar (500),
usuario varchar(50),
data_hora datetime,
chave varchar(255),
antes varchar (4000),
depois varchar (4000)
);

drop trigger audit_insert_aluno;
drop trigger audit_update_aluno;
drop trigger audit_delete_aluno;


DELIMITER $$

create trigger audit_Insert_aluno after insert on aluno

for each row
	begin
		insert into audit
        values 
        ('aluno', 
        'Insert', 
        current_user(),
        now(), 
        new.idaluno, 
        null, 
		concat ('idaluno: ', new.idaluno,' |nome: ',
			new.nome, ' |idade: ',new.cpf));       
	end $$ 

   

DELIMITER $$

create trigger audit_Update_aluno after update on aluno

for each row
	begin
		insert into audit values (
        'aluno',
        'Update',
        current_user(),
        now(),
        old.idaluno,
        concat('idaluno:', old.idaluno,' | nome: ', old.nome, ' |idade: ', old.cpf),
        concat ('idaluno: ', new.idaluno,' |nome: ',
			new.nome, ' |idade: ',new.cpf));
	end
    $$
    
DELIMITER $$

create trigger audit_Delete_aluno after delete on aluno

for each row
	begin
		insert into audit values (
        'aluno',
        'Delete',
        current_user(),
        now(),
        old.idaluno,
        concat('idaluno:', old.idaluno,' | nome: ', old.nome, ' |cpf: ', old.cpf),
        null);
	end
    $$
    
    select * From aluno;
    select * from audit;