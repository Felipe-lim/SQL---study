drop database cadastro;

create database cadastro
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use cadastro;
create table pessoas (

id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('M','F'),
peso decimal(5, 2),
altura decimal(3, 2),
nacionalidade varchar(20) default 'Brasil',
primary key (id)

) default charset = utf8mb4;

insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values
('1', 'godofredo', '1984-01-02', 'm', '78.5', '1.83', 'brasil');


select * from pessoas;


insert into pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
values
('maria', '1984-01-22', 'f', '55.5', '1.63', 'hungria');

insert into pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
values
('creuza', '1954-01-22', 'f', '55.5', '1.53', default);

insert into pessoas values
(default, 'luisa', '1994-01-22', 'f', '65.5', '1.73', 'chile');

insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values
(default, 'maria', '1954-01-22', 'f', '55.5', '1.53', 'praguai'),
(default, 'david', '1994-01-22', 'm', '65.5', '1.83', 'colombia'),
(default, 'nicholas', '1994-01-22', 'm', '65.5', '1.93', 'japao');

