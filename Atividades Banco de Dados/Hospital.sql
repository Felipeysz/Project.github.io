CREATE DATABASE hospital;

USE hospital;


CREATE TABLE Quarto(
Indentificacao_quarto INT PRIMARY KEY,
n_quarto VARCHAR(45)
);

CREATE TABLE comodo(
id_comodo INT PRIMARY KEY,
n_comodo VARCHAR(45),
Quarto_Indentificacao_quarto1 INT,
CONSTRAINT fk_Quarto_Indentificacao_quarto1 FOREIGN KEY (Quarto_Indentificacao_quarto1) REFERENCES quarto (indentificacao_quarto)
);

CREATE TABLE Medicos(
CRM VARCHAR(45) PRIMARY KEY,
Nome_Medico VARCHAR(45)
);

CREATE TABLE Medico_has_Quarto(
id_Med_d_Quar VARCHAR(45) PRIMARY KEY,
Medicos_CRM VARCHAR(45),
Quarto_Identificacao_quarto INT,
CONSTRAINT fk_Medicos_CRM FOREIGN KEY (Medicos_CRM) REFERENCES Medicos (CRM),
CONSTRAINT fk_Quarto_Identificacao FOREIGN KEY (Quarto_Identificacao_quarto) REFERENCES Quarto (Indentificacao_quarto)
);

CREATE TABLE Paciente(
Identificacao VARCHAR(20) PRIMARY KEY,
Nome VARCHAR(45),
comodo_id_comodo INT,
CONSTRAINT fk_comodo_id_comodo FOREIGN KEY (comodo_id_comodo) REFERENCES comodo (id_comodo)
);

CREATE TABLE Telefones(
id_Telefones VARCHAR(45) PRIMARY KEY,
Telefone VARCHAR(45),
Medicos_CRM VARCHAR(45),
Paciente_indentificacao VARCHAR(20)
);

SHOW TABLES;
