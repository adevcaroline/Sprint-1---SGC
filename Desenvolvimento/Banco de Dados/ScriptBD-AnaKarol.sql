create database sgc;

use sgc;

create table usuario (
idUsuario int primary key auto_increment,
cnpj char(14) not null,
senha char(8) not null
);

create table sensor (
idSensor int primary key auto_increment,
nome varchar(25) not null,
statusSensor varchar(30),
tipo varchar(30) not null,
constraint chkStatus check(statusSensor in ('Ativo', 'Inativo'))
 );
 
create table condominio (
idCondominio int primary key auto_increment,
nome varchar(30) not null,
logradouro varchar(50) not null,
cep char(8) not null,
numero int not null,
cnpj char(14) unique,
email varchar(40),
senha char(8) not null
);


create table medicao (
idMedicao int primary key auto_increment,
dataHora datetime default current_timestamp,
concentracaoGases int not null,
statusAlerta varchar(30),
taxaConcentacao int,
 check (taxaConcetracao in (15, 30, 50)),
constraint chkStatus
 check( statusAlerta in ('Normal', 'Atenção', 'Crítico')));

insert into cadastro (nome, senha, email) values 
	('Ana Karol', 'aninha2000', 'ana.barrocal@sptech.com'),
    ('Camila Jodai', 'camilinha2000', 'camila.jodai@sptech.com'),
    ('Caroline Soares', 'carolzinha2000', 'caroline.soares@sptech.com'),
    ('Guilherme Mendes', 'guilherminho200', 'guilherme.mendes@sptech.com'),
    ('João Lucas Reis', 'joaozinho2000', 'joao.lcarvalho@sptech.com'),
    ('Letícia Rodrigues', 'leticinha2000', 'leticia.rodrigues@sptech.com'),
    ('Rayssa Casagrande', 'rayssinha2000', 'rayssa.casagrande@sptech.com');
    
insert into sensor (nome, tipo, taxaConcetracao) values
    ('MQ-2', 'Sensor de gás', 15),
    ('MQ-2', 'Sensor de gás', 30),
    ('MQ-2', 'Sensor de gás', 50);
    
insert into condominio (nome, logradouro, cep, numero, cnpj) values
	('Osasco Residencial Life', 'Avenida O Trabuco Jornal ', '02723456', 247, '12345678000190'),
	('Osasco Residencial Death', 'O Vale da Morte', '66666666', 666, '12345678000191'),
	('Osasco Residencial Sky', 'O Vale da Vida', '77777777', 777, '12345678000192');
    
select * from cadastro;
select * from sensor;
select * from condominio;

