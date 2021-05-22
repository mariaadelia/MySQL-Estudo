create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria (
id bigint auto_increment,
tipo varchar(255) not null,
linguaCurso varchar(255) not null,
primary key(id)
);

insert into tb_categoria (tipo,linguaCurso) values ("Ilustração","Português");
insert into tb_categoria (tipo,linguaCurso) values ("Marketing e Negócios","Português");
insert into tb_categoria (tipo,linguaCurso) values ("Fotografia e Vídeo","Inglês");
insert into tb_categoria (tipo,linguaCurso) values ("Tecnologia","Português");
insert into tb_categoria (tipo,linguaCurso) values ("Design","Inglês");
select * from tb_categoria;

create table tb_curso (
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(7,2) not null,
quantidadeInstrutores int,
legenda boolean,
categoria_id bigint,
primary key(id),
foreign key (categoria_id)references tb_categoria(id)
);

insert into tb_curso(nome, preco, quantidadeInstrutores, legenda,categoria_id) values ("Desenho para principiantes nível -1",49,1,true,1);
update tb_curso set nome = "Desenho para principiantes nível 1" where id = 1;
insert into tb_curso(nome, preco, quantidadeInstrutores, legenda,categoria_id) values ("Sketchbook botânico: uma abordagem meditativa",59,1,true,1);
insert into tb_curso(nome, preco, quantidadeInstrutores, legenda,categoria_id) values ("Criação e edição de conteúdo para Instagram Stories",49,1,true,2);
insert into tb_curso(nome, preco, quantidadeInstrutores, legenda,categoria_id) values (" Introdução ao Adobe Premiere Pro",55,1,true,3);
update tb_curso set nome = "Introdução ao Adobe Premiere Pro" where id = 4;
insert into tb_curso(nome, preco, quantidadeInstrutores, legenda,categoria_id) values ("Adobe Photoshop para edição e retoque fotográfico",39.90,1,true,3);
insert into tb_curso(nome, preco, quantidadeInstrutores, legenda,categoria_id) values ("Design de produto digital com Lean e UX",39.90,1,false,4);
insert into tb_curso(nome, preco, quantidadeInstrutores, legenda,categoria_id) values ("Design e construção de móveis para iniciantes",39.90,1,true,5);
insert into tb_curso(nome, preco, quantidadeInstrutores, legenda,categoria_id) values ("Cake design: técnicas modernas de decoração",39.90,1,true,5);
select * from tb_curso;

-- Select especial
select * from tb_curso where preco > 50;
select * from tb_curso where preco between 3 and 60;
select * from tb_curso where nome like "j%";
-- inner join
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;

select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where tb_categoria.id = 5; -- id 5 = design;