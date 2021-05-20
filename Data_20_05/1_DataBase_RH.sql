create database db_rh;
use db_rh;

-- Criando tabela
create table tb_funcionares(
	id bigint auto_increment,
    nome varchar(255),
    idade int,
    anosEmpresa decimal,
    salario decimal,
    primary key (id)
);

-- mudar o decimal para a maneira correta 
alter table tb_funcionares modify salario decimal(40,2) not null;
alter table tb_funcionares modify idade int not null;
alter table tb_funcionares modify nome varchar(255) not null;

-- Inserindo dados
insert into tb_funcionares (nome, idade, anosEmpresa, salario) values ("João Alves da Silva", 35, 10.0, 8000.0);
insert into tb_funcionares (nome, idade, anosEmpresa, salario) values ("Paula Souza", 23, 2.0, 4000.0);
insert into tb_funcionares (nome, idade, anosEmpresa, salario) values ("Suzana Starlin", 18, 1.0, 1950.0);
insert into tb_funcionares (nome, idade, anosEmpresa, salario) values ("Vitor Alberto Santos", 18, 0.6, 1500.0);
insert into tb_funcionares (nome, idade, anosEmpresa, salario) values ("Juliana Aparecida", 30, 5.0, 10000.0);

-- Selecionar funcionares (baseado nos salários)
select * from tb_funcionares where salario > 2000;
select * from tb_funcionares where salario < 2000;

-- Add e removendo dados das tabelas
alter table tb_funcionares add cargo varchar(255);
alter table tb_funcionares drop anosEmpresa;

-- Atualizando informações
update tb_funcionares set cargo = "Estagiárie" where id=3;
update tb_funcionares set cargo = "Estagiário" where id=4;
update tb_funcionares set cargo = "Coordenadora" where id=5;
update tb_funcionares set cargo = "Desenvolvedora Jr." where id=2;
update tb_funcionares set cargo = "Desenvolvedor Pleno" where id=1;

-- Selecionando todas as informações
select * from tb_funcionares;