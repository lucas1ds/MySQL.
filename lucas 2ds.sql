create database fazendinha_da_minha_vo;
use fazendinha_da_minha_vo;

create table if not exists Plantas (id bigint auto_increment primary key not null,
nomePlanta varchar (50) not null,
idadePalnta int not null,
nomeCientifico varchar(50) not null,
especiePlanta varchar (50) not null,
quantidade int not null,
tamanho float not null,
instrucao varchar(150));