CREATE DATABASE estacionamentoShopping;

USE estacionamentoShopping;

CREATE TABLE TempoUSO (
id_tempUSO int not null primary key auto_increment,
dt_usoENT Date,
hr_usoENT Time,
dt_usoSAID Date,
hr_usoSAID Time
);

CREATE TABLE cliente(
codvgCliente INT NOT NULL PRIMARY KEY,
cpf_Cliente INT NOT NULL,
nm_Cliente VARCHAR(60) NOT NULL,
nur_Cliente INT NOT NULL,
ct_PCD INT,
idVeiculo_Cliente INT NOT NULL
);

/*
codvgCliente SERA A CHAVE ESTRANGEIRA DENTRO DO (VAGAS)
idVeiculo_Cliente(CHAVE PRIMARIA DENTRO DO VEICULO CLIENTE)
*/
CREATE TABLE VeiculoCliente(
idVeiculo_Cliente INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
plc_veiculocl VARCHAR(255) NOT NULL
);

CREATE TABLE VeiculoFuncionario(
idVeiculo_Funcionario INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
plc_veiculofun VARCHAR(255) NOT NULL
);

CREATE TABLE Estacionamento(
id_Estacionamento INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
codvgCliente INT NOT NULL,
codvgFuncionarios INT NOT NULL,
idVeiculo_Cliente INT NOT NULL,
idVeiculo_Funcionario INT NOT NULL
);

CREATE TABLE VAGASLIMITECLIENTE(
id_VAGASLIMITECLIENTE INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
codvgCliente INT NOT NULL
);

CREATE TABLE VAGASLIMITEFUNCIONARIO(
id_VAGASLIMITEFUNCIONARIO INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
codvgFuncionarios INT NOT NULL
);

CREATE TABLE funcionarios(
codvgFuncionarios INT NOT NULL PRIMARY KEY,
nm_Funcionario VARCHAR(60) NOT NULL,
tf_Funcionarios INT NOT NULL
); 