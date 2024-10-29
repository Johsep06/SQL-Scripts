use exemplos;

create table cliente_cadastrado(
	id int auto_increment,
    nome varchar(50) not null,
    
    primary key(id)
);

create table compras(
	id int auto_increment,
    cod_cliente int,
    valor float,
    
    primary key(id),
    foreign key(cod_cliente)
		references cliente_cadastrado(id)
);

insert into cliente_cadastrado(nome) values ("David");
insert into cliente_cadastrado(nome) values ("Elivelton");
insert into cliente_cadastrado(nome) values ("Pedro");
insert into cliente_cadastrado(nome) values ("Gaia");
insert into cliente_cadastrado(nome) values ("José");
insert into cliente_cadastrado(nome) values ("Romulo");
insert into cliente_cadastrado(nome) values ("Vitor");
insert into cliente_cadastrado(nome) values ("Carlos");

insert into compras(valor) values (12.00);
insert into compras(valor) values (20.00);
insert into compras(valor) values (74.00);
insert into compras(valor) values (33.00);
insert into compras(valor) values (40.00);

insert into compras(cod_cliente, valor) values (1, 12.00);
insert into compras(cod_cliente, valor) values (2, 20.00);
insert into compras(cod_cliente, valor) values (3, 74.00);
insert into compras(cod_cliente, valor) values (4, 33.00);
insert into compras(cod_cliente, valor) values (5, 40.00);

select * from cliente_cadastrado;

select nome, cliente_cadastrado.id as cliente, cod_cliente, compras.id
from cliente_cadastrado left join compras
on cliente_cadastrado.id = compras.cod_cliente;

select nome, cliente_cadastrado.id as cliente, cod_cliente, compras.id
from cliente_cadastrado left join compras
on cliente_cadastrado.id = compras.cod_cliente
where cod_cliente is null;

select nome, cliente_cadastrado.id as cliente, cod_cliente, compras.id
from cliente_cadastrado inner join compras
on cliente_cadastrado.id = compras.cod_cliente;