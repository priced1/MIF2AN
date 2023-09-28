/*
	Exercícios 04 - Junções
*/

-- 1- O que e junção de tabelas e quantas tabelas são necessárias, no mínimo, para estabelecer uma relação de junção?

é quando pegamos dados de duas tabelas e juntamos ela em uma so, e podem ser duas tabelas no minimo para junção
-- 3- Por meio de junção listar os nomes, os estados, os números das duplicatas 
-- e seus respectivos valores para todos os clientes residentes no estado de São Paulo.
select cliente.NOME,
		cliente.ESTADO,
		venda.DUPLIC,
		venda.VALOR
from
	cliente join venda on cliente.CODCLI= venda.CODCLI
where cliente.ESTADO= 'SP'

-- 4- Listar por meio de junção os títulos de carteira do cliente MICROS INFORMATICA S/A.

select cliente.NOME,
		venda.DUPLIC
from
	cliente join venda on cliente.CODCLI= venda.CODCLI
where cliente.NOME='MICROS INFORMATICA S/A'


-- 5- Listar por meio de junção todos os nomes de todos os clientes que possuam títulos 
-- com vencimento no mês de abril de qualquer ano.

select cliente.NOME,
	venda.VENCTO
from 
	cliente join venda on cliente.CODCLI = venda.CODCLI
where MONTH(venda.VENCTO) = 04	
		
------------------------------------------------------------------------------------------------
-- 6- Por meio de junção apresentar a quantidade de títulos agrupados por 
-- cliente para qualquer data de vencimento. Fazer o agrupamento dos nomes de clientes.
SELECT cliente.NOME,
	COUNT(*)
FROM cliente, venda 
WHERE cliente.CODCLI=venda.CODCLI 
GROUP BY cliente.NOME



-- 7- Apresentar por meio de junção a quantidade de títulos agrupados por  
-- ordem de ano para qualquer vencimento.
SELECT COUNT(*) AS 'QUANTIDADE DE TITULOS AGRUPADOS', 
       YEAR(venda.VENCTO) as 'ANO'
FROM cliente, venda 
WHERE cliente.CODCLI = venda. CODCLI 
GROUP BY YEAR(venda.VENCTO)

-- 8- Por meio de junção listar a quantidade de títulos agrupados por ordem de mês 
-- e ano para qualquer vencimento.
SELECT COUNT(*)	as 'QUANTIDADE DE TITULOS AGRUPADOS',
	MONTH(venda.VENCTO) as 'MES' ,
	YEAR(venda.VENCTO) as 'ANO' 
FROM cliente, venda 
WHERE cliente.CODCLI = venda. CODCLI 
GROUP BY MONTH(venda.VENCTO), YEAR(venda.VENCTO);


-- 9- Por meio de junção listar a quantidade de títulos e o valor total
--  agrupados por ordem de mês e ano para qualquer vencimento.
SELECT COUNT('venda.DUPLIC') AS 'QUANTIDADE DE TITULOS AGRUPADOS',
		MONTH(venda.VENCTO)  AS 'MES',
		SUM(venda.VALOR) AS 'VALOR TOTAL DOS TITULOS',
		YEAR(venda.VENCTO) AS 'ANO'
FROM cliente join venda
ON cliente.CODCLI = venda.CODCLI
GROUP BY MONTH(venda.VENCTO), YEAR(venda.VENCTO);


-- 10- Por meio de junção apresentar os nomes, os valores e as datas de vencimento 
-- dos títulos em atraso entre 1° de janeiro de 2000 e 31 de dezembro de 2003.
-- Ordenar sem agrupamento a consulta por nome se cliente.
SELECT cliente.NOME, 
		venda.VALOR, 
		venda.VENCTO 
FROM cliente join venda
on cliente.CODCLI = venda.CODCLI
WHERE venda.VENCTO >='20000101' AND venda.VENCTO <='20031231'
ORDER BY cliente.NOME;
