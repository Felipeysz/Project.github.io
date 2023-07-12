set global general_log = 'off';
set global general_log_file = 'TriggerCinemaCompleto.LOG';

select @@Datadir;

SHOW VARIABLES LIKE "general_log%";
SHOW VARIABLES LIKE "log_output%";
SHOW VARIABLES LIKE "general_log_file%";


SELECT * FROM ano;
SELECT * FROM filme;
SELECT * FROM filme_oscar;
SELECT * FROM genero;
SELECT * FROM oscar_ano;
SELECT * FROM oscar_ganhou;
SELECT * FROM produtora;
SELECT * FROM produtora_filme;

DROP TRIGGER audit_Insert_ano;
DROP TRIGGER audit_Update_ano;
DROP TRIGGER audit_Delete_ano;

DROP TRIGGER audit_Insert_filme;
DROP TRIGGER audit_Update_filme;
DROP TRIGGER audit_Delete_filme;

DROP TRIGGER 
DROP TRIGGER 
DROP TRIGGER 

DROP TRIGGER 
DROP TRIGGER 
DROP TRIGGER 

DROP TRIGGER 
DROP TRIGGER 
DROP TRIGGER 

DROP TRIGGER 
DROP TRIGGER 
DROP TRIGGER 

DROP TRIGGER 
DROP TRIGGER 
DROP TRIGGER 

DROP TRIGGER 
DROP TRIGGER 
DROP TRIGGER 

								/*TRIGGERS ANO*/
DELIMITER $$

create trigger audit_Insert_ano after insert on ano

for each row
	begin
		insert into audit
        values 
        ('Ano', /*Nome da TABELA*/
        'Insert', /*Função*/
        current_user(),
        now(), 
        new.pk_id_ano, /*Primari key*/
        null, 
		concat ('IDAno: ', new.pk_id_ano, '|AnoOscar: ', new.ano_oscar, '|EdicaoOscar: ', new.edicao_oscar)
        );  
	end $$ 




DELIMITER $$

create trigger audit_Update_ano after update on ano

for each row
	begin
		insert into audit values (
        'Ano', /*Nome da TABELA*/
        'Update', /*Função*/
        current_user(),
        now(),
        old.pk_id_ano, /*Primari key*/
        concat ('IDAno: ', old.pk_id_ano, '|AnoOscar: ', old.ano_oscar, '|EdicaoOscar: ', old.edicao_oscar),
        concat ('IDAno: ', new.pk_id_ano, '|AnoOscar: ', new.ano_oscar, '|EdicaoOscar: ', new.edicao_oscar)
        );
	end
    $$
    
    
DELIMITER $$

create trigger audit_Delete_ano after delete on ano

for each row
	begin
		insert into audit values (
        'Ano', /*Nome da TABELA*/
        'Delete', /*Função*/
        current_user(),
        now(),
        old.pk_id_ano, /*Primari key*/
        concat ('IDAno: ', old.pk_id_ano, '|AnoOscar: ', old.ano_oscar, '|EdicaoOscar: ', old.edicao_oscar),
        null);
	end
    $$
    
								/*TRIGGERS FILME*/
                                
DELIMITER $$

create trigger audit_Insert_filme after insert on filme

for each row
	begin
		insert into audit
        values 
        ('filme', /*Nome da TABELA*/
        'Insert', /*Função*/
        current_user(),
        now(), 
        new.pk_id_filme, /*Primari key*/
        null, 
        concat ('IDFilme: ', new.pk_id_filme, '|NomeFilme: ', new.nome_filme, '|AnoFilme: ', new.ano_filme, '|DiretorFilme: ', new.diretor_filme, '|OrçamentoFilme: ', new.orcamento_filme, '|BilheteriaFilme: ', new.bilheteria_filme)
        );  
	end $$ 


DELIMITER $$

create trigger audit_Update_filme after update on filme

for each row
	begin
		insert into audit values (
        'filme', /*Nome da TABELA*/
        'Update', /*Função*/
        current_user(),
        now(),
        old.pk_id_filme, /*Primari key*/
        concat ('IDFilme: ', old.pk_id_filme, '|NomeFilme: ', old.nome_filme, '|AnoFilme: ', old.ano_filme, '|DiretorFilme: ', old.diretor_filme, '|OrçamentoFilme: ', old.orcamento_filme, '|BilheteriaFilme: ', old.bilheteria_filme),
        concat ('IDFilme: ', new.pk_id_filme, '|NomeFilme: ', new.nome_filme, '|AnoFilme: ', new.ano_filme, '|DiretorFilme: ', new.diretor_filme, '|OrçamentoFilme: ', new.orcamento_filme, '|BilheteriaFilme: ', new.bilheteria_filme)
        );
	end
    $$
    
    
DELIMITER $$

create trigger audit_Delete_filme after delete on filme

for each row
	begin
		insert into audit values (
        'filme', /*Nome da TABELA*/
        'Delete', /*Função*/
        current_user(),
        now(),
        old.pk_id_filme, /*Primari key*/
        concat ('IDFilme: ', old.pk_id_filme, '|NomeFilme: ', old.nome_filme, '|AnoFilme: ', old.ano_filme, '|DiretorFilme: ', old.diretor_filme, '|OrçamentoFilme: ', old.orcamento_filme, '|BilheteriaFilme: ', old.bilheteria_filme),
        null);
	end
    $$
    
												/*TRIGGERS FILME_GENERO*/
                                                
DELIMITER $$

create trigger audit_Insert_filme_genero after insert on filme_genero

for each row
	begin
		insert into audit
        values 
        ('filme_genero', /*Nome da TABELA*/
        'Insert', /*Função*/
        current_user(),
        now(), 
        new.pk_filme_genero, /*Primari key*/
        null, 
        concat ('FilmeGenero: ', new.pk_filme_genero)
        );  
	end $$ 


DELIMITER $$

create trigger audit_Update_filme_genero after update on filme_genero

for each row
	begin
		insert into audit values (
        'filme_genero', /*Nome da TABELA*/
        'Update', /*Função*/
        current_user(),
        now(),
        old.pk_filme_genero, /*Primari key*/
        concat ('FilmeGenero: ', old.pk_filme_genero),
        concat ('FilmeGenero: ', new.pk_filme_genero)
        );
	end
    $$
    
    
DELIMITER $$

create trigger audit_Delete_filme_genero after delete on filme_genero

for each row
	begin
		insert into audit values (
        'filme_genero', /*Nome da TABELA*/
        'Delete', /*Função*/
        current_user(),
        now(),
        old.pk_filme_genero, /*Primari key*/
        concat ('FilmeGenero: ', old.pk_filme_genero),
        null);
	end
    $$
    
    
    												/*TRIGGERS FILME_OSCAR*/
                                                
DELIMITER $$

create trigger audit_Insert_filme_oscar after insert on filme_oscar

for each row
	begin
		insert into audit
        values 
        ('filme_oscar', /*Nome da TABELA*/
        'Insert', /*Função*/
        current_user(),
        now(), 
        new.pk_id_filme_oscar, /*Primari key*/
        null, 
        concat ('FilmeOscar: ', new.pk_id_filme_oscar)
        );  
	end $$ 


DELIMITER $$

create trigger audit_Update_filme_oscar after update on filme_oscar

for each row
	begin
		insert into audit values (
        'filme_oscar ', /*Nome da TABELA*/
        'Update', /*Função*/
        current_user(),
        now(),
        old.pk_id_filme_oscar, /*Primari key*/
        concat ('FilmeOscar: ', old.pk_id_filme_oscar),
        concat ('FilmeOscar: ', new.pk_id_filme_oscar)
        );
	end
    $$
    
    
DELIMITER $$

create trigger audit_Delete_filme_oscar after delete on filme_oscar

for each row
	begin
		insert into audit values (
        'filme_oscar', /*Nome da TABELA*/
        'Delete', /*Função*/
        current_user(),
        now(),
        old.pk_id_filme_oscar, /*Primari key*/
        concat ('FilmeOscar: ', old.pk_id_filme_oscar),
        null);
	end
    $$
    
        												/*TRIGGERS GENERO*/
                                                
DELIMITER $$

create trigger audit_Insert_genero after insert on genero

for each row
	begin
		insert into audit
        values 
        ('genero', /*Nome da TABELA*/
        'Insert', /*Função*/
        current_user(),
        now(), 
        new.pk_id_genero, /*Primari key*/
        null, 
        concat ('Genero: ', new.pk_id_genero, '|NomeGenero: ', new.nome_genero)
        );  
	end $$ 


DELIMITER $$

create trigger audit_Update_genero after update on genero

for each row
	begin
		insert into audit values (
        'genero', /*Nome da TABELA*/
        'Update', /*Função*/
        current_user(),
        now(),
        old.pk_id_genero, /*Primari key*/
        concat ('Genero: ', old.pk_id_genero, '|NomeGenero: ', old.nome_genero),
        concat ('Genero: ', new.pk_id_genero, '|NomeGenero: ', new.nome_genero)
        );
	end
    $$
    
    
DELIMITER $$

create trigger audit_Delete_genero after delete on genero

for each row
	begin
		insert into audit values (
        'genero', /*Nome da TABELA*/
        'Delete', /*Função*/
        current_user(),
        now(),
        old.pk_id_genero, /*Primari key*/
        concat ('Genero: ', old.pk_id_genero, '|NomeGenero: ', old.nome_genero),
        null);
	end
    $$
    
            												/*TRIGGERS OSCAR_ANO*/
                                                
DELIMITER $$

create trigger audit_Insert_oscar_ano after insert on oscar_ano

for each row
	begin
		insert into audit
        values 
        ('oscar_ano', /*Nome da TABELA*/
        'Insert', /*Função*/
        current_user(),
        now(), 
        new.pk_id_oscar_ano, /*Primari key*/
        null, 
        concat ('Genero: ', new.pk_id_oscar_ano)
        );  
	end $$ 


DELIMITER $$

create trigger audit_Update_oscar_ano after update on oscar_ano

for each row
	begin
		insert into audit values (
        'oscar_ano', /*Nome da TABELA*/
        'Update', /*Função*/
        current_user(),
        now(),
        old.pk_id_genero, /*Primari key*/
        concat ('Genero: ', old.pk_id_oscar_ano),
        concat ('Genero: ', new.pk_id_oscar_ano)
        );
	end
    $$
    
    
DELIMITER $$

create trigger audit_Delete_oscar_ano after delete on oscar_ano

for each row
	begin
		insert into audit values (
        'oscar_ano', /*Nome da TABELA*/
        'Delete', /*Função*/
        current_user(),
        now(),
        old.pk_id_genero, /*Primari key*/
        concat ('Genero: ', old.pk_id_genero, '|NomeGenero: ', old.nome_genero),
        null);
	end
    $$
    
												/*TRIGGERS OSCAR_GANHOU*/
                                                
DELIMITER $$

create trigger audit_Insert_oscar_ganhou after insert on oscar_ganhou

for each row
	begin
		insert into audit
        values 
        ('oscar_ganhou', /*Nome da TABELA*/
        'Insert', /*Função*/
        current_user(),
        now(), 
        new.pk_id_oscar, /*Primari key*/
        null, 
        concat ('Genero: ', new.pk_id_oscar_ano)
        );  
	end $$ 


DELIMITER $$

create trigger audit_Update_oscar_ganhou after update on oscar_ganhou

for each row
	begin
		insert into audit values (
        'oscar_ganhou', /*Nome da TABELA*/
        'Update', /*Função*/
        current_user(),
        now(),
        old.pk_id_oscar, /*Primari key*/
        concat ('Genero: ', old.pk_id_oscar_ano),
        concat ('Genero: ', new.pk_id_oscar_ano)
        );
	end
    $$
    
    
DELIMITER $$

create trigger audit_Delete_oscar_ganhou after delete on oscar_ganhou

for each row
	begin
		insert into audit values (
        'oscar_ganhou', /*Nome da TABELA*/
        'Delete', /*Função*/
        current_user(),
        now(),
        old.pk_id_oscar, /*Primari key*/
        concat ('Genero: ', old.pk_id_oscar_ano),
        null);
	end
    $$
    
    
														/*TRIGGERS PRODUTORA*/
                                                
DELIMITER $$

create trigger audit_Insert_produtora after insert on produtora

for each row
	begin
		insert into audit
        values 
        ('produtora', /*Nome da TABELA*/
        'Insert', /*Função*/
        current_user(),
        now(), 
        new.pk_id_produtora, /*Primari key*/
        null, 
        concat ('Produtora: ', new.pk_id_produtora)
        );  
	end $$ 


DELIMITER $$

create trigger audit_Update_produtora after update on produtora

for each row
	begin
		insert into audit values (
        'produtora', /*Nome da TABELA*/
        'Update', /*Função*/
        current_user(),
        now(),
        old.pk_id_produtora, /*Primari key*/
         concat ('Produtora: ', old.pk_id_produtora),
         concat ('Produtora: ', new.pk_id_produtora)
        );
	end
    $$
    
    
DELIMITER $$

create trigger audit_Delete_produtora after delete on produtora

for each row
	begin
		insert into audit values (
        'produtora', /*Nome da TABELA*/
        'Delete', /*Função*/
        current_user(),
        now(),
        old.pk_id_produtora, /*Primari key*/
        concat ('Produtora: ', old.pk_id_produtora),
        null);
	end
    $$
    
    
    														/*TRIGGERS PRODUTORA_FILME*/
                                                
DELIMITER $$

create trigger audit_Insert_produtora_filme after insert on produtora_filme

for each row
	begin
		insert into audit
        values 
        ('produtora_filme', /*Nome da TABELA*/
        'Insert', /*Função*/
        current_user(),
        now(), 
        new.pk_id_produtora_filme, /*Primari key*/
        null, 
        concat ('ProdutoraFilme: ', new.pk_id_produtora_filme)
        );  
	end $$ 


DELIMITER $$

create trigger audit_Update_produtora_filme after update on produtora_filme

for each row
	begin
		insert into audit values (
        'produtora_filme', /*Nome da TABELA*/
        'Update', /*Função*/
        current_user(),
        now(),
        old.pk_id_produtora, /*Primari key*/
         concat ('ProdutoraFilme: ', old.pk_id_produtora_filme),
         concat ('ProdutoraFilme: ', new.pk_id_produtora_filme)
        );
	end
    $$
    
    
DELIMITER $$

create trigger audit_Delete_produtora after delete on produtora

for each row
	begin
		insert into audit values (
        'produtora', /*Nome da TABELA*/
        'Delete', /*Função*/
        current_user(),
        now(),
        old.pk_id_produtora, /*Primari key*/
        concat ('ProdutoraFilme: ', old.pk_id_produtora_filme),
        null);
	end
    $$