create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe (
id bigint auto_increment,
classe varchar(255) not null,
magia boolean not null,
primary key(id)
);

insert into tb_classe (classe,magia) values ("Guerreira/Guerreiro",false);
insert into tb_classe (classe,magia) values ("Arqueira/Arqueiro",true);
insert into tb_classe (classe,magia) values ("Bruxa/Bruxo",true);
insert into tb_classe (classe,magia) values ("Ladina/Ladino",false);
insert into tb_classe (classe,magia) values ("Sacerdotisa/Sacerdote",true);
select * from tb_classe;

create table tb_personagem (
id bigint auto_increment,
raca varchar(255) not null,
nivel int not null,
ataque int not null,
defesa int not null,
classe_id bigint,
primary key(id),
foreign key (classe_id)references tb_classe(id)
);

insert into tb_personagem(raca,nivel,ataque,defesa,classe_id) values ("Humana",10,4000,2500,1);
insert into tb_personagem(raca,nivel,ataque,defesa,classe_id) values ("Elfa",30,10000,8000,2);
insert into tb_personagem(raca,nivel,ataque,defesa,classe_id) values ("Humano",5,1000,1000,4);
insert into tb_personagem(raca,nivel,ataque,defesa,classe_id) values ("Fada",20,1000,1000,3);
insert into tb_personagem(raca,nivel,ataque,defesa,classe_id) values ("Eladrin",10,4000,2500,5);
insert into tb_personagem(raca,nivel,ataque,defesa,classe_id) values ("Duende",5,500,1000,4);
insert into tb_personagem(raca,nivel,ataque,defesa,classe_id) values ("Khajiit",10,4000,2500,1);
insert into tb_personagem(raca,nivel,ataque,defesa,classe_id) values ("Goblin",10,5000,3000,5);
select * from tb_personagem;

-- Select especial
select * from tb_personagem where ataque > 2000;
select * from tb_personagem where defesa between 1000 and 2000;
select * from tb_personagem where raca like "c%";
-- inner join
select tb_personagem.raca,tb_personagem.nivel, tb_personagem.ataque, tb_personagem.defesa, 
	tb_classe.classe,tb_classe.magia from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select tb_personagem.raca,tb_personagem.nivel, tb_personagem.ataque, tb_personagem.defesa, 
	tb_classe.classe,tb_classe.magia from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id
    where tb_classe.id = 1; -- id 1 = guerreira/guerreiro

