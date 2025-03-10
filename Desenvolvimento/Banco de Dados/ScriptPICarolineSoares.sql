-- Tabelas Pi

CREATE DATABASE Sgc;
USE sgc;

CREATE TABLE usuario (
idUsuario INT PRIMARY KEY auto_increment,
senha VARCHAR(15) NOT NULL,
cnpj CHAR(14) UNIQUE NOT NULL
);

CREATE TABLE sensor (
idSensor INT PRIMARY KEY auto_increment,
nome VARCHAR(25) NOT NULL,
tipo VARCHAR(30) NOT NULL,
statusSensor VARCHAR(15) 
	CONSTRAINT ckSensor 
		CHECK (statusSensor in ('Ativo', 'Inativo'))
);

CREATE TABLE medicao (
idMedicao int primary key auto_increment,
dataHora datetime,
concentracaoGases INT NOT NULL,
	CONSTRAINT ckTaxa 
		CHECK (taxaConcentracao in (15,30,50)), 
statusAlerta VARCHAR(30)
	CONSTRAINT ckstatus
		CHECK (statusAlerta in ('Normal', 'Atenção', 'Crítico'))
);

CREATE TABLE condominio (
idCondominio INT PRIMARY KEY auto_increment,
nome VARCHAR(30) NOT NULL,
logradouro VARCHAR(50) NOT NULL,
cep CHAR(8) NOT NULL,
numero INT NOT NULL,
cnpj CHAR(14) UNIQUE NOT NULL
);

INSERT INTO cadastro (nome, senha, email) VALUES
('Ana Karoline', 'aninha2000', 'ana.barrocal@sptech.com'),
('Camila Jodoi', 'camilinha2000', 'camila.jodai@sptech.com'),
('Caroline Soares','carolzinha2000', 'caroline.soares@sptech.com'),
('Guilherme Mendes', 'guilherminho200', 'guilherme.mendes@sptech.com'),
('João Lucas Reis', 'joaozinho2000', 'joao.lcarvalho@sptech.com'),
('Letícia Rodrigues', 'leticinha2000', 'leticia.rodrigues@sptech.com'),
('Rayssa Casagrande', 'rayssinha2000', 'rayssa.casagrande@sptech.com');

INSERT INTO sensor (nome, tipo, taxaConcentracao, statusSensor) VALUES
('MQ-2', 'Sensor gás', '15', 'Ativo'),
('MQ-3', 'Sensor gás', '30', 'Inativo'),
('MQ-4', 'Sensor gás', '50', 'Ativo');

INSERT INTO condominio (nome, logradouro, cep, numero, cnpj) VALUES
('Osasco Residencial Life','O Trabuco Jornal', '02723456', 247, '12345678000190'),
('Osasco Residencial Death','O Vale da Morte', '66666666', 666, '12345678000191'),
('Osasco Residencial Sky','O Vale da Vida', '77777777', 777, '12345678000192');

SELECT nome, cnpj FROM condominio WHERE idCondominio = 2;
SELECT nome, tipo,  statusSensor FROM sensor WHERE idSensor = 2; 
SELECT nome, email FROM cadastro WHERE idCadastro = 2; 
