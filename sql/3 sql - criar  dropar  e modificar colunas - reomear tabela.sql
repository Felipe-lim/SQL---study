use cadastro;

describe pessoas;
select * from pessoas;


alter table pessoas
add column profissao varchar(10);

alter table pessoas
drop column profissao;

alter table pessoas
add column profissao varchar(10) after nome;

alter table pessoas
add codigo int first;

alter table pessoas
add column profissao varchar(20) not null default '' after nome; 

alter table pessoas
change column profissao prof varchar(20);


alter table pessoas
rename to gafanhotos












