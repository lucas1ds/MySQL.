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

create table if not exists canteiros (id bigint auto_increment primary key not null,
data_plantio date,
area_plantada varchar(50) not null,
area_regada varchar(50) not null,
data_regada date not null,
quantidade_adubo int,
adubo varchar(50) not null,
data_adubo date);

create table if not exists colheitas (id bigint auto_increment primary key not null,
data_colheita date not null,
quantidade_colhida varchar(50) not null,
area_colhida varchar(50) not null,
qualidade varchar(50),
destino varchar(50)not null);
