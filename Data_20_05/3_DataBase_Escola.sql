create database db_escola;
use db_escola;

-- Criar tabela
create table tb_alunes(
	id bigint auto_increment,
    nome varchar(40) not null,
    turma varchar(50) not null,
    idade int not null,
    nota decimal(4,2) not null,
    primary key(id)
);

-- Inserir dados dos alunes
insert into tb_alunes (nome, turma, idade, nota) values ("João Paulo Silva", "3º EM B", 17, 8.9);
insert into tb_alunes (nome, turma, idade, nota) values ("Joana Maria Ramus", "2º EM B", 16, 4.9);
insert into tb_alunes (nome, turma, idade, nota) values ("Gabriela Ramos", "1º EM B", 15, 9.5);
insert into tb_alunes (nome, turma, idade, nota) values ("Caique Albuquerque", "9ºano A", 14, 3.5);
insert into tb_alunes (nome, turma, idade, nota) values ("Cleonice Aparecida de Campos", "9ºano C", 13, 10);
insert into tb_alunes (nome, turma, idade, nota) values ("Larissa Lopes", "1º A", 16, 9);
insert into tb_alunes (nome, turma, idade, nota) values ("Vitor Augusto Souza", "1º B", 15, 7);
insert into tb_alunes (nome, turma, idade, nota) values ("Adrian Ljsdgfs", "3º B", 18, 9.7);

select * from tb_alunes where nota >= 7;
select * from tb_alunes where nota < 7;
select * from tb_alunes;

-- aterar dados
update tb_alunes set nome = "Adrian Levcík" where id=8;
