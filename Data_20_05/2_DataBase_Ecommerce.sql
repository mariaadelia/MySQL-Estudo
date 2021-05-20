create database db_ecommerce;
use db_ecommerce;

-- criando a tabela
create table tb_produtos (
	id bigint auto_increment,
    nome varchar(255) not null,
    anoFabricacao year(4) not null,
    quantidade bigint not null,
	preco decimal not null,
    primary key(id)
);

-- mudar o decimal para a maneira correta 
alter table tb_produtos modify preco decimal(6,2);

-- inserindo dados
insert into tb_produtos (nome, anoFabricacao, quantidade, preco) values ("Macbook Pro 13", 2021,15,9899);
insert into tb_produtos (nome, anoFabricacao, quantidade, preco) values ("Notebook Gamer Acer Nitro 5", 2019,20,6000.50);
insert into tb_produtos (nome, anoFabricacao, quantidade, preco) values ("Iphone XR", 2020,5,5499);
insert into tb_produtos (nome, anoFabricacao, quantidade, preco) values ("Iphone 12", 2021,10,7999);
insert into tb_produtos (nome, anoFabricacao, quantidade, preco) values ("Smartphone Xiaomi Mi 10T", 2021,80,6399);
insert into tb_produtos (nome, anoFabricacao, quantidade, preco) values ("Pulseira Inteligente Mi Smart Band 5", 2021,7,430);
insert into tb_produtos (nome, anoFabricacao, quantidade, preco) values ("Fone de Ouvido Bluetooth Air Dots 2", 2019,15,185);
insert into tb_produtos (nome, anoFabricacao, quantidade, preco) values ("Fone de vido Bluetooth Air 2 SE Mi True Wireless Earphones 2 Basic", 2020,25,255);

-- deletando dados que repeti
delete from tb_produtos where id = 1;
delete from tb_produtos where id = 3;

-- visualizando a informação
select * from tb_produtos;
select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;

-- alterando as informações (de "vido" para "Ouvido")
update tb_produtos set nome = "Fone de Ouvido Bluetooth Air 2 SE Mi True Wireless Earphones 2 Basic" where id=10;
update tb_produtos set preco = 6000.50 where id=4;
