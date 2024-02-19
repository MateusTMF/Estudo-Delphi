CREATE table produto (
	idproduto serial primary key,
	descricao varchar(300),
	qtd int,
	valunit numeric
);
drop table produto;
 
insert into produto (descricao,qtd,valunit) values ('Pendrive',8,22.90);
insert into produto (descricao,qtd,valunit) values ('Teclado',6,69.90);
insert into produto (descricao,qtd,valunit) values ('Mouse',7,20.90);
insert into produto (descricao,qtd,valunit) values ('Monitor',4,489.90);


select * from produto;

create table prod_ped (
	idprod_ped serial primary key,
	idproduto int,
	idpedido int,
	constraint fk_Ped foreign key (idpedido) references pedido (idpedido),
	constraint fk_pes foreign key (idproduto) references produto (idproduto) 
);
drop table prod_ped;

select * from prod_ped;

insert into prod_ped (idproduto,idpedido) values (1,1);
insert into prod_ped (idproduto,idpedido) values (4,2);
insert into prod_ped (idproduto,idpedido) values (2,3);
insert into prod_ped (idproduto,idpedido) values (3,121);
insert into prod_ped (idproduto,idpedido) values (2,189);


create table pedido (
	idpedido serial primary key,
	prazodias int,
	qtd int,
	idcliente int,
	idvendedor int,
	constraint fk_cliente foreign key (idcliente) references cliente (idcliente),
	constraint fk_vendedor foreign key (idvendedor) references vendedor (idvendedor)
);
drop table pedido;

insert into pedido (prazodias,qtd,idcliente,idvendedor) values (8,1,1,1);
insert into pedido (prazodias,qtd,idcliente,idvendedor) values (9,2,1,2);
insert into pedido (prazodias,qtd,idcliente,idvendedor) values (6,3,2,3);
insert into pedido (idpedido,prazodias,qtd,idcliente,idvendedor) values (121,10,7,1,2);
insert into pedido (idpedido,prazodias,qtd,idcliente,idvendedor) values (189,20,8,2,3);


select * from pedido;

create table cliente(
	idcliente serial primary key,
	nome varchar(200),
	cidade varchar(100),
	cep varchar(20),
	cgc varchar(50)
);
drop table cliente;

insert into cliente(nome,cidade,cep,cgc) values ('Marta','Votuporanga','30000-000','82331655322');
insert into cliente(nome,cidade,cep,cgc) values ('Maria','Fernandópolis','32000-000','35331655322');


select * from cliente;

create table vendedor (
	idvendedor serial primary key,
	nome varchar(200)
);
drop table vendedor;

insert into vendedor (nome) values ('Debora');
insert into vendedor (nome) values ('Marcos');
insert into vendedor (nome) values ('Elias');


select * from vendedor;




--Exercicios Roteiro 1 SQL Access--

1-
a)
select descricao from produto;

b)
select idpedido from pedido where prazodias >= 10 and prazodias <=20;

c)
select nome from cliente where cep like '300%';

d)
select p.idpedido from pedido p inner join prod_ped pp on p.idpedido = pp.idpedido where (idproduto = 31 or idproduto = 77 or idproduto = 53)and p.qtd > 30;

2-

3-


--Exercicios Roteiro 2 SQL Access--

1- 
select * from produto where idproduto LIKE '3%'; 

2-

3-
select * from produto order by valunit desc;

4-
select * from vendedor v inner join pedido p on v.idvendedor = p.idvendedor order by v.idvendedor;


--Exercicios Roteiro 4 SQL Access--

1-
a)
select v.idvendedor,c.nome,c.cgc,c.cidade,p.idpedido from cliente c inner join pedido p on c.idcliente = p.idcliente inner join vendedor v on p.idvendedor = v.idvendedor where p.idpedido = 121 or p.idpedido = 189 or p.idpedido = 203 or p.idpedido = 138;

b)
select p.descricao,pd.qtd from produto p inner join prod_ped pp on p.idproduto = pp.idproduto inner join pedido pd on pd.idpedido = pp.idpedido;

c)
select * from vendedor v inner join pedido p on v.idvendedor = p.idvendedor inner join prod_ped pp on pp.idpedido = p.idpedido inner join produto pd on pd.idproduto = pp.idproduto;

d)


--Exercicios Roteiro 5 SQL Access--


1-
a)
select * from pedido p inner join prod_ped pp on pp.idpedido = p.idpedido inner join produto pd ON pd.idproduto = pp.idproduto;