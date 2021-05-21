create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria (
id bigint auto_increment,
tipo varchar(255) not null,
tamanho varchar(255) not null,
primary key(id)
);

insert into tb_categoria (tipo,tamanho) values ("Salgada","Grande");
insert into tb_categoria (tipo,tamanho) values ("Salgada","Média");
insert into tb_categoria (tipo,tamanho) values ("Salgada","Broto");
insert into tb_categoria (tipo,tamanho) values ("Doce","Grande");
insert into tb_categoria (tipo,tamanho) values ("Doce","Broto");
select * from tb_categoria;

create table tb_pizza (
id bigint auto_increment,
sabor varchar(255) not null,
preco decimal(5,2) not null,
bebida boolean,
bordaRecheada boolean,
categoria_id bigint,
primary key(id),
foreign key (categoria_id)references tb_categoria(id)
);

insert into tb_pizza(sabor, preco, bebida, bordaRecheada,categoria_id) values ("Calabresa",46.50,true,false,1);
insert into tb_pizza(sabor, preco, bebida, bordaRecheada,categoria_id) values ("Mozarela",46.50,false,true,1);
insert into tb_pizza(sabor, preco, bebida, bordaRecheada,categoria_id) values ("A moda da casa",45,true,true,2);
update tb_pizza set sabor = "À moda da casa" where id = 3; -- tinha esquecido o acento
insert into tb_pizza(sabor, preco, bebida, bordaRecheada,categoria_id) values ("Frango com Catupiry",40,true,false,3);
insert into tb_pizza(sabor, preco, bebida, bordaRecheada,categoria_id) values ("Chocolate com morango",65,true,false,4);
insert into tb_pizza(sabor, preco, bebida, bordaRecheada,categoria_id) values ("Romeu e Julieta",65,false,false,4);
insert into tb_pizza(sabor, preco, bebida, bordaRecheada,categoria_id) values ("Doce de leite",55,false,false,5);
insert into tb_pizza(sabor, preco, bebida, bordaRecheada,categoria_id) values ("Prestígio",55,false,false,5);
select * from tb_pizza;

-- Select especial
select * from tb_pizza where preco > 45;
select * from tb_pizza where preco between 29 and 60;
select * from tb_pizza where sabor like "c%";
-- inner join
select tb_pizza.sabor,tb_pizza.preco, tb_pizza.bordaRecheada, tb_categoria.tamanho,
	tb_categoria.tipo from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

select tb_pizza.sabor,tb_pizza.preco, tb_pizza.bordaRecheada,tb_categoria.tamanho,tb_categoria.tipo 
	from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id
    where tb_categoria.id = 4; -- id 4 = pizza doce grande;