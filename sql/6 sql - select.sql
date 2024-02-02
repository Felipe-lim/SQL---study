select * from cursos -- quais colunas serao selecionadas
order by nome desc; -- ordenar por colunas

-- desc = descendente
-- asc = ascendente 

select * from cursos
where ano = '2016'
order by nome;

select nome, descricao, carga, ano from cursos
where ano <= '2016'
order by nome;
 
select * from cursos
where ano between '2014' and '2016'
order by ano desc, nome asc;

select * from cursos
where ano in ('2014', '2016');

select * from cursos;

-- coringa - tudo que tem ou começa com p
select * from cursos
where nome like 'p%';

-- a no final
select * from cursos
where nome like '%a';

-- a em qualquer lugar
select * from cursos
where nome like '%a%';

-- comeca com p e tem duas coisas antes do t
select * from cursos
where nome like 'p__t%';

-- mostra os diferentes elementos presentes em uma coluna
-- sem repeticao
select distinct carga from cursos;

-- conta as linhas
select count(*) from cursos;

select count(*) from cursos where carga > 40;

-- maior carga do curso
select max(carga) from cursos;

select min(totaulas) from cursos where ano = '2016';
select nome, max(totaulas) from cursos where ano = '2016';

-- somatorio - media
select sum(totaulas) from cursos;
select avg(totaulas) from cursos;


-- exercicios 
select * from gafanhotos;
--  todas as mulheres
select * from gafanhotos where sexo = 'f';
select * from gafanhotos where nascimento between '2000-01-01' and '2015-12-31';
select * from gafanhotos where sexo = 'm' and profissao = 'programador';
select * from gafanhotos where sexo = 'f' and nacionalidade = 'brasil' and nome like 'j%';

select nome, nacionalidade from gafanhotos
where nome like '_%silva%'and
peso < '100' and
nacionalidade != 'brasil'and
sexo = 'm';

select max(altura) from gafanhotos where sexo = 'm' and nacionalidade = 'brasil';
select avg(peso) from gafanhotos;
select count(altura) from gafanhotos where sexo = 'F' and altura > '1.90';


-- . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 
select * from gafanhotos;

-- agrupar desse jeito é igual a distinct
select carga from cursos
group by carga;

-- contar quantidade de cada tipo de carga
select carga, count(*) from cursos
group by carga
order by carga;

-- exemplo guanabara - having funciona como where, mas para o group by
select ano, count(*) from cursos
group by ano
having count(*) >= 5
order by count(*) desc;

-- exemplo guanabara - having funciona como where, mas para o group by
select ano, count(*) from cursos
where totaulas > '30'
group by ano
having ano >= '2015'
order by count(*) desc;


-- exemplo complexo com cargas
select carga, count(*) from cursos
where ano > '2015'
group by carga
having carga > (select avg(carga) from cursos); -- esta procurando uma carga maior que a media
-- e calculando a media direto dentro da funcao having



-- . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 
-- exercicios 
select * from gafanhotos;
-- . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 
-- 1
select profissao, count(*) from gafanhotos
group by profissao
order by count(*) desc;

-- 2
select sexo, count(*) from gafanhotos
where nascimento > 2005-01-01
group by sexo;

-- 3
select nacionalidade, count(*) from gafanhotos
where nacionalidade != 'brasil'
group by nacionalidade
having count(*) > 3;

-- 4
select altura, count(*) from gafanhotos
where peso > 100
group by altura 
having altura > (select avg(altura) from gafanhotos)
order by altura desc;


-- . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 
-- . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 








