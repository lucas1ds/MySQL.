create database biblioteca;
use biblioteca;

create table if not exists Livros(id int auto_increment primary key,
				codigo varchar (55) not null,
                titulo varchar(80) not null,
               ano date not null,
              situacao tinyint(1) not null default 1);
              
create table leitores (id INT AUTO_INCREMENT PRIMARY KEY,
    nome int(55) NOT NULL,
    email VARCHAR(55) UNIQUE NOT NULL,
    telefone varchar(55),
    data_nascimento DATE,
    endereco VARCHAR(55));