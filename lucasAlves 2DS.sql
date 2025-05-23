create database dropStep

create table if not exists Marcas( id bigint auto_increment primary key not null,
marca_id varchar(50) not null,
nome text not null,
pais_origem varchar(50),
ano_fundacao int,
descricao text);


create table if not exists Categorias (id bigint auto_increment primary key not null,
categoria_id varchar(50),
nome varchar(50),
descricao text);

create table if not exists Produtos (id bigint auto_increment primary key not null,
nome varchar(50)
categoria_id int,
preco int not null,
decricao text,
data_lancamento date,
quantidade_estoque int,
tamanhos_disponiveis varchar(50));

create table if not exists Clientes (id bigint auto_increment primary key not null,
nome varchar(50) not null,
email varchar(50),
telefone int not null,
data_nascimento date not null,
cpf varchar(50) not null,
endereco text);

create table if not exists Pedidos( id bigint auto_increment primary key not null,
pedido_id int,
cliente varchar(50) not null,
data_pedido date,
valor_total int,
metodo_pagamento varchar(50),
endereco_entrega varchar(50) not null);

create table if not exists Estoque(id bigint auto_increment primary key not null,
estoque_id int,
produto_id int,
tamanho varchar(50),
quantidade int);

create table if not exists Avaliacoes( id bigint auto_increment primary key not null,
produto_id int,
cliente_id int,
nota int,
comentario text,
data_avaliacao date);
