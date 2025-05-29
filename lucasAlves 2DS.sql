create database dropStep;
use dropStep;

create table if not exists Marcas( id bigint auto_increment primary key not null,
nome varchar(50) not null,
pais_origem varchar(50),
ano_fundacao int,
descricao varchar(50));

drop table clientes;


create table if not exists Categorias (id bigint auto_increment primary key not null,
nome varchar(50) not null,
descricao varchar(50));

create table if not exists Produtos (id bigint auto_increment primary key not null,
nome varchar(50),
categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES Categorias(id),
preco int not null,
descricao varchar(50),
data_lancamento date,
quantidade_estoque int,
tamanhos_disponiveis varchar(50));

create table if not exists Clientes (id bigint auto_increment primary key not null,
nome varchar(50) not null,
email varchar(50),
telefone varchar(25) not null,
data_nascimento date not null,
cpf varchar(50) not null,
endereco varchar(50));

create table if not exists Pedidos( id bigint auto_increment primary key not null,
clientes_id BIGINT,
FOREIGN KEY (clientes_id) REFERENCES Clientes(id),
data_pedido date,
valor_total int,
metodo_pagamento varchar(50),
endereco_entrega varchar(50) not null);

create table if not exists Estoque(id bigint auto_increment primary key not null,
produto_id varchar(50),
tamanho varchar(50),
quantidade varchar(50));

create table if not exists Avaliacoes( id bigint auto_increment primary key not null,
clientes_id BIGINT,
FOREIGN KEY (clientes_id) REFERENCES Clientes(id),
produto_id int,
cliente_id int,
nota int,
comentario text,
data_avaliacao date);
