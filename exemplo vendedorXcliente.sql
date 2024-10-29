-- create database exemplos; 

use exemplos;

create table vendedor(
	cod int auto_increment,
    nome varchar(10) not null,
    
    primary key(cod)
);

create table cliente(
	nro int auto_increment,
    nome varchar(10) not null,
    ender varchar(10),
    saldo float not null,
    cod_vend int not null,
    
    primary key(nro),
    foreign key(cod_vend)
		references vendedor(cod)
);

insert into vendedor(nome) values('adriana');
insert into vendedor(nome) values('roberto');

insert into cliente(nome, ender, saldo, cod_vend) values('marcia', 'rua x', 100, 1);
insert into cliente(nome, ender, saldo, cod_vend) values('cristina', 'rua y', 10, 1);
insert into cliente(nome, ender, saldo, cod_vend) values('manoel', 'rua 1', 234, 1);
insert into cliente(nome, ender, saldo, cod_vend) values('rodrigo', 'rua 2', 137, 2);
insert into cliente(nome, ender, saldo, cod_vend) values('fracisca', 'rua z', 167, 2);

select nro, cliente.nome as n_cli, ender, cod_vend,
	cod, vendedor.nome as v_nome
from cliente, vendedor
where cod_vend = cod