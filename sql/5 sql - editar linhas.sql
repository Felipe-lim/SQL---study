insert into cursos values
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
 ('2','Algoritimos','Logica de Programação','20','8','2014'),
 ('3','Photoshop','Aulas de Photoshop CC','9','20','2014'),
 ('4','PGP','PHP para Iniciantes','33','40','2010'),
 ('5','Jarva','Intro ao Java','22','10','2000'),
 ('6','MySQL','Curso MySQL','21','15','2016'),
 ('7','Word','Word Completo','40','30','2018'),
 ('8','Sapateado','Dança Rítimica','14','30','2018'),
 ('9','Cozinha Árabe','Aprenda a fazer Kibe','40','30','2018'),
 ('10','YouTuber','Gerar Polêmicas e Ganhar Inscritos','5','2','2010');
 
 select * from cursos;
 -- mudando as linhas da tabela
 

 update cursos
 set nome = 'HTML5'
 where idcurso = '1'; 
 
update cursos
set nome = 'PHP', ano = '2015'
where idcurso = '4'; 

update cursos
set nome = 'Java', ano = '2015', carga = '2015'
where idcurso = '5'
limit 1; -- diz que o comando só será realizado em uma linha


-- nao e obrigatorio alterar as linhas com base no id
-- e possivel fazer o mesmo com outros atributos da linha
-- ex: where ano = '2018'


delete from cursos
where idcurso = '8';

delete from cursos
where idcurso = '9';

delete from cursos
where idcurso = '10';

-- truncate table cursos = apagar dados da tabela

