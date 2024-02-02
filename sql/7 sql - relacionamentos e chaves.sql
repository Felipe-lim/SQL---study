-- estamos adicionando uma chave estrangeira para poder dizer qual o curso
-- preferido do gafanhoto

use cadastro;

alter table gafanhotos
add column cursopreferido int;

-- definir curso preferido como chave estrangeira
alter table gafanhotos
-- chave estrangeira esta na coluna curso preferido
add foreign key(cursopreferido)
-- criando uma relacao com a coluna curso preferido e id curso
references cursos(idcurso);

-- chave multipla em curso preferido MUL
describe gafanhotos;
select * from gafanhotos;


-- cadastrar curso preferido de cada aluno
update gafanhotos
set cursopreferido = '6' where id = '1';
-- nao posso apagar o curso, pois ja tem alguem vinculado a ele
-- caso ninguem seja vinculado, eu posso apagar

-- usando as chaves para puxar o curso preferido de cada um
select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano
from gafanhotos join cursos -- sempre que usar o join, tem que usar o on
on cursos.idcurso = gafanhotos.cursopreferido;


-- usando as chaves para puxar o curso preferido de cada um
select g.nome, g.cursopreferido, c.nome, c.ano
from gafanhotos as g inner join cursos as c -- inner foi subentendido  na query passada
on c.idcurso = g.cursopreferido;


-- outer join mostra mesmo as linhas que não tem correlacao de
-- chave externa. um lado sempre tem que ser o preferencial
select g.nome, g.cursopreferido, c.nome, c.ano
from gafanhotos as g left outer join cursos as c -- outer join. nesse caso o preferido esquerda
on c.idcurso = g.cursopreferido;






