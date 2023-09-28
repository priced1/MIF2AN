/*
	Exerc�cios 04 - Jun��es
*/

-- 1- O que e jun��o de tabelas e quantas tabelas s�o necess�rias, no m�nimo, para estabelecer uma rela��o de jun��o?

� quando pegamos dados de duas tabelas e juntamos ela em uma so, e podem ser duas tabelas no minimo para jun��o
-- 3- Por meio de jun��o listar os nomes, os estados, os n�meros das duplicatas 
-- e seus respectivos valores para todos os clientes residentes no estado de S�o Paulo.
select cliente.NOME,
		cliente.ESTADO,
		venda.DUPLIC,
		venda.VALOR
from
	cliente join venda on cliente.CODCLI= venda.CODCLI
where cliente.ESTADO= 'SP'

-- 4- Listar por meio de jun��o os t�tulos de carteira do cliente MICROS INFORMATICA S/A.

select cliente.NOME,
		venda.DUPLIC
from
	cliente join venda on cliente.CODCLI= venda.CODCLI
where cliente.NOME='MICROS INFORMATICA S/A'


-- 5- Listar por meio de jun��o todos os nomes de todos os clientes que possuam t�tulos 
-- com vencimento no m�s de abril de qualquer ano.

select cliente.NOME,
	venda.VENCTO
from 
	cliente join venda on cliente.CODCLI = venda.CODCLI
where MONTH(venda.VENCTO) = 04	
		
------------------------------------------------------------------------------------------------
-- 6- Por meio de jun��o apresentar a quantidade de t�tulos agrupados por 
-- cliente para qualquer data de vencimento. Fazer o agrupamento dos nomes de clientes.
SELECT cliente.NOME,
	COUNT(*)
FROM cliente, venda 
WHERE cliente.CODCLI=venda.CODCLI 
GROUP BY cliente.NOME



-- 7- Apresentar por meio de jun��o a quantidade de t�tulos agrupados por  
-- ordem de ano para qualquer vencimento.
SELECT COUNT(*) AS 'QUANTIDADE DE TITULOS AGRUPADOS', 
       YEAR(venda.VENCTO) as 'ANO'
FROM cliente, venda 
WHERE cliente.CODCLI = venda. CODCLI 
GROUP BY YEAR(venda.VENCTO)

-- 8- Por meio de jun��o listar a quantidade de t�tulos agrupados por ordem de m�s 
-- e ano para qualquer vencimento.
SELECT COUNT(*)	as 'QUANTIDADE DE TITULOS AGRUPADOS',
	MONTH(venda.VENCTO) as 'MES' ,
	YEAR(venda.VENCTO) as 'ANO' 
FROM cliente, venda 
WHERE cliente.CODCLI = venda. CODCLI 
GROUP BY MONTH(venda.VENCTO), YEAR(venda.VENCTO);


-- 9- Por meio de jun��o listar a quantidade de t�tulos e o valor total
--  agrupados por ordem de m�s e ano para qualquer vencimento.
SELECT COUNT('venda.DUPLIC') AS 'QUANTIDADE DE TITULOS AGRUPADOS',
		MONTH(venda.VENCTO)  AS 'MES',
		SUM(venda.VALOR) AS 'VALOR TOTAL DOS TITULOS',
		YEAR(venda.VENCTO) AS 'ANO'
FROM cliente join venda
ON cliente.CODCLI = venda.CODCLI
GROUP BY MONTH(venda.VENCTO), YEAR(venda.VENCTO);


-- 10- Por meio de jun��o apresentar os nomes, os valores e as datas de vencimento 
-- dos t�tulos em atraso entre 1� de janeiro de 2000 e 31 de dezembro de 2003.
-- Ordenar sem agrupamento a consulta por nome se cliente.
SELECT cliente.NOME, 
		venda.VALOR, 
		venda.VENCTO 
FROM cliente join venda
on cliente.CODCLI = venda.CODCLI
WHERE venda.VENCTO >='20000101' AND venda.VENCTO <='20031231'
ORDER BY cliente.NOME;
