create database exemplos; 

use exemplos;

create table vinho(
	id int auto_increment,
    nome varchar(10) not null,
    tipo varchar(10),
    preco float not null default 0,
    vinicola int not null,
    
    primary key(id)
);

-- inserindo dados

insert into vinho(nome, tipo, preco, vinicola) values('amanda', 'tinto', 100, 1);
insert into vinho(nome, tipo, preco, vinicola) values('belinha', 'branco', 200, 1);
insert into vinho(nome, tipo, preco, vinicola) values('camila', 'rose', 300, 1);
insert into vinho(nome, tipo, preco, vinicola) values('daniela', 'branco', 250, 2);
insert into vinho(nome, tipo, preco, vinicola) values('eduarda', 'branco', 150, 2);
insert into vinho(nome, tipo, preco, vinicola) values('fernanda', 'tinto', 7, 2);
insert into vinho(nome, tipo, preco, vinicola) values('gabriela', 'tinto', 397, 3);
insert into vinho(nome, tipo, preco, vinicola) values('helena', 'branco', 333, 3);

-- consulta de dados

select tipo, max(preco) as 'maior preco',
min(preco) as 'menor preco',
avg(preco) as 'preco medio',
count(vinicola) as 'numero de vinicolas'
from vinho
group by tipo;

-- select tipo, max(preco) as 'maior preco', avg(preco) as 'preco medio'
-- from vinho
-- group by tipo
-- having avg(preco) > 200;