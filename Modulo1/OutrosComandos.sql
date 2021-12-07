USE db_suco;

#Fazer a seleção com um limite máximo de registros a serem retornados
#SELECT * FROM tb_produto LIMIT 2;

#Fazer a seleção de campo(s) específico(s)
#SELECT CPF, NOME, IDADE FROM tb_cliente ;

#Fazer a seleção com Aliases na coluna
#SELECT CPF AS Id_Cliente FROM tb_cliente ;
#SELECT CPF AS Id_Cliente, NOME AS Nome_Cliente, IDADE AS Idade_Cliente FROM tb_cliente;

#Fazer a seleção com Aliases na tabela
#SELECT * FROM tb_cliente AS cliente;

#Exercício, selecionar os nomes e a número de matrícula dos vendedores
SELECT nome, matricula FROM tb_vendedores;

#Filtrando os registros utilizando o Where
SELECT NOME, IDADE,ESTADO FROM tb_cliente WHERE ESTADO = 'SP';

-- Para permitir que faça as alterações
SET SQL_SAFE_UPDATES =0;
#Fazendo o update de mais de um registros utilizando o Where para filtrar
#UPDATE tb_produto SET sabor = 'Limão e mais frutas cítricas' WHERE sabor = 'Limão';
SELECT * FROM tb_produto;

#Exercício, selecionar os dados da vendedora Claudia Morais
SELECT * FROM tb_vendedores WHERE NOME = 'Claudia Morais';
#Usando o Like para ser mais específico
SELECT * FROM tb_vendedores WHERE nome LIKE 'C%';

-- Usando o WHERE com > , < , <> tanto com números quanto com letras
SELECT * FROM tb_cliente WHERE idade < 18;
SELECT * FROM tb_cliente WHERE idade <= 18;
SELECT * FROM tb_cliente WHERE idade <> 18;
SELECT * FROM tb_cliente WHERE nome > 'Gabriel Araujo';

-- Usando o BETWEEN....AND...
SELECT * FROM tb_produto WHERE PRECO_LISTA BETWEEN 7.003 AND 7.005;
/* Faço isso porque se rodo esse comando: SELECT * FROM tb_produto WHERE PRECO_LISTA = 7.004; ,
não ir[a aparecer o número 7.004 pq criei a lista com Float e não como Decimal e por isso não é
possível pegar números exatos quando coloco =
*/
SELECT * FROM tb_vendedores WHERE nome BETWEEN 'Cláudia Morais' AND 'Péricles Alves';
/*Para selecionar os nomes que vão estar entre o C e o P, basicamente*/

-- Exercício paa identificar os vendedores que tem comissão maior que 10%
SELECT * FROM tb_vendedores WHERE percentual_comissao > 0.10;

-- Filtrar datas usando apenas o ano(YEAR) ou o mês(MONTH)
SELECT * FROM tb_cliente WHERE YEAR(DATA_NASCIMENTO) =  1990;
SELECT * FROM tb_cliente WHERE MONTH(DATA_NASCIMENTO) <=  2;
SELECT * FROM tb_cliente WHERE DAY(DATA_NASCIMENTO) = 37 ;

-- Exercício, vendedores que foram admitidos na empresa a partir de 2016
SELECT * FROM tb_vendedores WHERE YEAR(data_admissao) >= 2016;

-- Colocando a lógica do AND e do OR
SELECT * FROM tb_cliente WHERE IDADE >=22 AND SEXO = 'F';
SELECT * FROM tb_cliente WHERE ESTADO = 'RJ' OR ESTADO = 'MG' OR SEXO = 'F';
-- Juntando o AND e o OR
SELECT * FROM tb_cliente WHERE (IDADE <=22 AND SEXO = 'F') OR (ESTADO = 'RJ' OR ESTADO = 'MG');

-- Exercício selecionar os vendedores que estão de férias e que foram admitidos antes de 2016
SELECT * FROM tb_vendedores WHERE de_ferias = 1 AND YEAR(data_admissao) < 2016;

-- Usando o LIKE
SELECT * FROM tb_vendedores WHERE nome LIKE '%a';
SELECT * FROM tb_vendedores WHERE nome LIKE 'a%';
SELECT * FROM tb_vendedores WHERE nome LIKE '%a%';
SELECT * FROM tb_vendedores WHERE nome LIKE '__a%';
SELECT * FROM tb_vendedores WHERE nome LIKE '%ra%';
SELECT * FROM tb_vendedores;

/*Teste usando o AND/OR junto com o WHERE dentro do UPDATE e do DELETE
INSERT INTO tb_vendedores (matricula, nome, percentual_comissao, data_admissao, de_ferias) 
	VALUES ('00001', 'Testando tudo', 1, '2013-10-10', 0);
UPDATE tb_vendedores SET nome = 'Teste' WHERE matricula = '00001' AND percentual_comissao = 1;
DELETE FROM tb_vendedores WHERE matricula = '00001' AND percentual_comissao = 1 ; */