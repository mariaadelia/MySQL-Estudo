create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria (
id bigint auto_increment,
tipo varchar(255) not null,
delivery boolean not null,
primary key(id)
);

insert into tb_categoria (tipo,delivery) values ("Medicamentos",true);
insert into tb_categoria (tipo,delivery) values ("Perfumaria",true);
insert into tb_categoria (tipo,delivery) values ("Ortopedia",true);
insert into tb_categoria (tipo,delivery) values ("Vitaminas e Suplementos",true);
insert into tb_categoria (tipo,delivery) values ("Medicamentos controlados",false);
select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(7,2) not null,
quantidade int,
vencimento date,
categoria_id bigint,
primary key(id),
foreign key (categoria_id)references tb_categoria(id)
);

insert into tb_produtos(nome, preco, quantidade, vencimento,categoria_id) values ("Losartana Potássica 50mg Prati Donaduzzi com 60 comprimidos",8.85,50,'2022-04-05',1);
insert into tb_produtos(nome, preco, quantidade, vencimento,categoria_id) values ("Dorflex com 10 comprimidos",5.89,0,'2021-07-08',1);
insert into tb_produtos(nome, preco, quantidade, vencimento,categoria_id) values ("Dipirona Sódica 500mg EMS com 10 comprimidos",6.39,30,'2022-01-07',1);
insert into tb_produtos(nome, preco, quantidade, vencimento,categoria_id) values ("Centrum Complemento 60 Comprimidos",92.99,10,'2022-02-08',4);
insert into tb_produtos(nome, preco, quantidade, vencimento,categoria_id) values ("Kit La Roche-Posay Protetor Solar Anthelios Airlicium FPS 30 com 50g + Gel de Limpeza Effaclar Concentrado com 60g",53.99,1,'2022-01-05',2);
insert into tb_produtos(nome, preco, quantidade, vencimento,categoria_id) values ("Joelheira Articulada Needs Tamanho G",99.89,50,'2023-01-05',3);
insert into tb_produtos(nome, preco, quantidade, vencimento,categoria_id) values ("Joelheira Articulada Needs Tamanho M",99.89,20,'2023-01-05',3);
insert into tb_produtos(nome, preco, quantidade, vencimento,categoria_id) values ("Fluoxetina 20mg Legrand Genérico com 30 Comprimidos",20.85,30,'2022-06-05',5);
select * from tb_produtos;

-- Select especial
select * from tb_produtos where preco > 50;
select * from tb_produtos where preco between 3 and 60;
select * from tb_produtos where nome like "b%";
-- inner join
select tb_produtos.nome,tb_produtos.preco, tb_produtos.quantidade, tb_produtos.vencimento,tb_categoria.tipo,
	tb_categoria.delivery from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select tb_produtos.nome,tb_produtos.preco, tb_produtos.quantidade, tb_produtos.vencimento,tb_categoria.tipo,
	tb_categoria.delivery from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id
    where tb_categoria.id = 5; -- id 4 = medicamentos controlados;