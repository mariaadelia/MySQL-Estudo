create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria (
id bigint auto_increment,
tipo varchar(255) not null,
delivery boolean not null,
primary key(id)
);

insert into tb_categoria (tipo,delivery) values ("Argamassas",true);
insert into tb_categoria (tipo,delivery) values ("Caixas d'Água",true);
insert into tb_categoria (tipo,delivery) values ("Cisternas",true);
insert into tb_categoria (tipo,delivery) values ("Drywall",true);
insert into tb_categoria (tipo,delivery) values ("Aços para Construção",true);
select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(7,2) not null,
quantidade int,
dataVencimento date,
categoria_id bigint,
primary key(id),
foreign key (categoria_id)references tb_categoria(id)
);

insert into tb_produtos(nome, preco, quantidade, dataVencimento,categoria_id) values ("Argamassa ACI Interno Cinza 20kg Axton",10.79,100,'2022-05-22',1);
insert into tb_produtos(nome, preco, quantidade, dataVencimento,categoria_id) values ("Argamassa Piso sobre Piso Interno e Externo Branco 20kg Votoran",35.90,150,'2022-05-22',1);
insert into tb_produtos(nome, preco, quantidade, dataVencimento,categoria_id) values ("Caixa d'água Polietileno 1.000L Azul Fortlev",349.90,100,'2024-03-22',2);
insert into tb_produtos(nome, preco, quantidade, dataVencimento,categoria_id) values ("Tanque de Polietileno 5.000L Azul 1,38m Acqualimp",2689.90,100,'2024-03-22',2);
insert into tb_produtos(nome, preco, quantidade, dataVencimento,categoria_id) values ("Eco Tanque 80L Bombona Casológica",189.90,100,'2024-03-22',3);
insert into tb_produtos(nome, preco, quantidade, dataVencimento,categoria_id) values ("Bloco de Gesso Standard Maciço 10x50cm Super Gesso",32.90,150,'2025-05-22',4);
insert into tb_produtos(nome, preco, quantidade, dataVencimento,categoria_id) values ("Coluna de Aço 10x15cmx4m 3/8 Columaster",139.90,100,'2025-05-22',5);
insert into tb_produtos(nome, preco, quantidade, dataVencimento,categoria_id) values ("Arame Galvanizado PVC Fio 26 50m",21.90,100,'2026-05-22',5);
select * from tb_produtos;

-- Select especial
select * from tb_produtos where preco > 50;
select * from tb_produtos where preco between 3 and 60;
select * from tb_produtos where nome like "c%";
-- inner join
select tb_produtos.nome,tb_produtos.preco, tb_produtos.quantidade, tb_produtos.dataVencimento,tb_categoria.tipo,
	tb_categoria.delivery from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select tb_produtos.nome,tb_produtos.preco, tb_produtos.quantidade, tb_produtos.dataVencimento,tb_categoria.tipo,
	tb_categoria.delivery from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id
    where tb_categoria.id = 5; -- id 5 = aços para construção;