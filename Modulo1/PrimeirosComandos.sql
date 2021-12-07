#CREATE DATABASE IF NOT EXISTS db_teste DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
#CREATE DATABASE db_teste;
CREATE DATABASE IF NOT EXISTS db_suco DEFAULT CHARSET utf8mb4 COLLATE utf8mb4_general_ci;

#DROP DATABASE IF EXISTS db_suco
#DROP DATABASE db_suco

USE db_suco;

CREATE TABLE tb_cliente (
	cpf varchar(11),
    nome varchar(100),
    endereco varchar(150),
    bairro varchar(150),
    cidade varchar(50),
    estado varchar(50),
    cep varchar(8),
    idade tinyint,
    genero enum('F','M','NB','Outros'),
    limite_credito double,
    volume_compra double,
    primeira_compra boolean,
    primary key (cpf)
);

CREATE TABLE tb_vendedores (
	matricula varchar(5),
    nome varchar(100),
    percentual_comissao double
);

#Outra forma de criar a tabela (quando não selecionei o db antes)
CREATE TABLE `db_suco`.`tb_produtos` (
	produto varchar(20),
    nome varchar(150),
    embalagem varchar(50),
    tamanho varchar(50),
    sabor varchar(50),
    preco_lista double
);

#DROP TABLE IF EXISTS tb_cliente3;
#DROP TABLE tb_cliente3;

#INSERT INTO tb_vendedores (matricula, nome, percentual_comissao)
	#VALUES ('00233','João Geraldo da Fonseca Júnior',0.10);
    
#Inserindo a chave primária depois da tabela já criada
ALTER TABLE tb_vendedores ADD PRIMARY KEY(matricula);
ALTER TABLE tb_produtos ADD PRIMARY KEY(produto);

    
INSERT INTO tb_vendedores (matricula, nome, percentual_comissao)
	VALUES ('00235','Márcio Almeida Silva',0.08), ('00236','Cláudia Morais',0.11);

#INSERT INTO tb_produtos (produto, nome, embalagem, tamanho, sabor, preco_lista)
	#VALUES ('1040107', 'Light - 350 ml - Melancia','Lata','350ml','Melancia',4.56);
    
INSERT INTO tb_produtos (produto, nome, embalagem, tamanho, sabor, preco_lista)
	VALUES ('1088126', 'Linha Citros - 1 Litro - Limão','PET','2 Litros','Laranja',16.01),
			('544931', 'Frescor do Verão - 350 ml - Limão','Lata','350ml','Laranja',2.46);

#Alterando o registro
UPDATE tb_produtos SET tamanho = '1 Litro', sabor = 'Limão',preco_lista = 7.00
	WHERE produto = '1088126';
    
UPDATE tb_produtos SET sabor = 'Limão' WHERE produto = '544931';

#Apagar 1 Registro específico
#DELETE FROM tb_vendedores WHERE matricula = '00233';

#Apagar TODOS os Registros
#SET SQL_SAFE_UPDATES = 0;
#DELETE FROM tb_vendedores;
#SET SQL_SAFE_UPDATES = 0;

#Adicionando um campo na tabela já pronta
ALTER TABLE tb_cliente ADD COLUMN (data_nascimento DATE);

#Apagando uma coluna da tabela
ALTER TABLE tb_cliente DROP COLUMN idade;

INSERT INTO tb_cliente (cpf, nome, endereco, bairro, cidade, estado, cep, genero, limite_credito, volume_compra, primeira_compra,
	data_nascimento)
	VALUES ('000345-87','João da Silva','Rua Bladvirt', 'Jd. das Flores', 'São Paulo', 'São Paulo',
		'08000000','M', 50, 1000, 0, '1989-01-01'); #0 = false 1 = true


#EXERCICIO
#ALTER TABLE tb_vendedores ADD COLUMN (data_admissao DATE);
#ALTER TABLE tb_vendedores ADD COLUMN (de_ferias BOOLEAN);
#UPDATE tb_vendedores SET percentual_comissao = 0.08, data_admissao = '2014-08-15',de_ferias = false
	#WHERE matricula = '00235';    
#INSERT INTO tb_vendedores (matricula, nome, percentual_comissao, data_admissao, de_ferias)
	#VALUES ('00237','Roberta Martins',0.11,'2017-03-18', true), ('00238','Péricles Alves',0.11,'2016-08-21', false);

#Mudando o nome da coluna
#ALTER TABLE tb_vendedores ADD COLUMN (teste3 DECIMAL(7,2));
#ALTER TABLE tb_vendedores CHANGE teste3 teste_final VARCHAR(150);

    
SELECT * FROM tb_vendedores;
SELECT * FROM tb_produtos;
SELECT * FROM tb_cliente;    