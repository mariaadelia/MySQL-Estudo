create database db_cidade_das_frutas;
use db_cidade_das_frutas;

create table tb_categoria (
id bigint auto_increment,
tipo varchar(255) not null,
organico boolean not null,
primary key(id)
);

insert into tb_categoria (tipo,organico) values ("Frutas",true);
insert into tb_categoria (tipo,organico) values ("Legumes",true);
insert into tb_categoria (tipo,organico) values ("Verduras",true);
insert into tb_categoria (tipo,organico) values ("Mercearia",false);
insert into tb_categoria (tipo,organico) values ("Saladas",true);
select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(7,2) not null,
quantidade int,
DataRecebimento date,
categoria_id bigint,
primary key(id),
foreign key (categoria_id)references tb_categoria(id)
);

insert into tb_produtos(nome, preco, quantidade, DataRecebimento,categoria_id) values ("maça",5.00,100,'2021-05-22',1);
insert into tb_produtos(nome, preco, quantidade, DataRecebimento,categoria_id) values ("uva",14.00,500,'2021-05-22',1);
insert into tb_produtos(nome, preco, quantidade, DataRecebimento,categoria_id) values ("mamão",8.00,200,'2021-05-22',1);
insert into tb_produtos(nome, preco, quantidade, DataRecebimento,categoria_id) values ("alface",2.00,300,'2021-05-22',3);
insert into tb_produtos(nome, preco, quantidade, DataRecebimento,categoria_id) values ("repolho",4.00,150,'2021-05-20',3);
insert into tb_produtos(nome, preco, quantidade, DataRecebimento,categoria_id) values ("abóbora",2.50,50,'2021-05-20',2);
insert into tb_produtos(nome, preco, quantidade, DataRecebimento,categoria_id) values ("berinjela",19.9,30,'2021-05-20',2);
insert into tb_produtos(nome, preco, quantidade, DataRecebimento,categoria_id) values ("azeite",19,10,'2021-05-15',4);
select * from tb_produtos;

-- Select especial
select * from tb_produtos where preco > 50;
select * from tb_produtos where preco between 3 and 60;
select * from tb_produtos where nome like "c%";
-- inner join
select tb_produtos.nome,tb_produtos.preco, tb_produtos.quantidade, tb_produtos.DataRecebimento,tb_categoria.tipo,
	tb_categoria.organico from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select tb_produtos.nome,tb_produtos.preco, tb_produtos.quantidade, tb_produtos.DataRecebimento,tb_categoria.tipo,
	tb_categoria.organico from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id
    where tb_categoria.id = 3; -- id 3 = verduras;