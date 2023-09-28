/*
	Exerc�cios 02 - Operadores SQL
	Turma: MRD2AN	Data: 27/03/2023	
*/
-- 1. Quais operadores aritm�ticos podem ser utilizados?
+,-,*,/,%

-- 2. Quais s�mbolos s�o utilizados para alterar a prioridade de c�lculo matem�tico?
(,)

-- 3. Quais s�o os operadores de compara��o suportados?
=, <>,!=,>,>=,<,<=

-- 4. Quais s�o os operadores l�gicos suportados?
AND, OR NOT

-- 5. Quais s�o os operadores auxiliares suportados?
LIKE, IN, BETWEEN, IS NULL/ IS NOT NULL, EXISTS/ NOT EXISTS

-- 6. Fa�a uma simula��o para apresentar uma consulta com as colunas (campos)
-- CODFUN, NOME, SALARIO com sal�rio somado a R$ 250.00.
SELECT CODFUN, NOME, SALARIO + 250.00 AS SALARIO_ATUALIZADO FROM CADFUN
--SELECT CODFUN, NOME, SALARIO + 250 FROM CADFUN;

-- 7. Fa�a uma simula��o para apresentar uma consulta com as colunas (campos)
-- CODFUN, NOME, SALARIO com uma dedu��o de 7.5%.
SELECT CODFUN, NOME, SALARIO * 7.5 AS SALARIO_DEDUZIDO FROM CADFUN


-- 8. Apresente uma consulta com todos os campos (colunas) de todos os
-- registros cuja fun��o seja igual a analista.
SELECT *FROM CADFUN WHERE FUNCAO= 'ANALISTA'

-- 9. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros cujo sal�rio seja maior ou igual a R$ 1700.
SELECT *FROM CADFUN WHERE SALARIO >=1700.00

-- 10. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros cujo sal�rio seja maior que R$ 1700.
SELECT *FROM CADFUN WHERE SALARIO >1700.00

-- 11. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros cujo sal�rio seja menor que R$ 1700.
SELECT *FROM CADFUN WHERE SALARIO < 1700.00

-- 12. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros cujo sal�rio igual a R$ 1700.
SELECT *FROM CADFUN WHERE SALARIO =1700.00

-- 13. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros dos funcion�rios com fun��o de programador e de analista.
SELECT *FROM CADFUN WHERE FUNCAO IN ('programador', 'analista');
--SELECT * FOM CADFUN WHERE FUNCAO = 'PROGRAMADOR' OR FUNCAO = 'ANALISTA';

-- 14. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros dos funcion�rios com fun��o de programador e de analista
-- que ganham acima de 1200.
SELECT *FROM CADFUN WHERE FUNCAO IN ('programador', 'analista') AND SALARIO > 1200;
--SELECT*FROM CADFUN WHERE(FUN��O='PROGRAMADOR', OR FUNCAO='ANALISTA') AND SALARIO >1200

-- 15. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros dos funcion�rios que n�o ocupem as fun��es de programador e de analista.
SELECT *FROM CADFUN WHERE FUNCAO NOT IN ('programador', 'analista');
--SELECT * FROM CADFUN WHERE FUNCAO <> 'PROGRAMADOR' AND FUNCAO <> 'ANALISTA';, SELECT * FROM CADFUN WHERE NOT (FUNCAO = 'PROGRAMADOR' OR FUNCAO = 'ANALISTA');,SELECT * FROM CADFUN WHERE FUNCAO NOT IN ('PROGRAMADOR','ANALISTA');

-- 16. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros dos funcion�rios que possuem entre 2 e 4 filhos.
SELECT *FROM CADFUN WHERE FILHOS BETWEEN 2 AND 4;

-- 17. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros dos funcion�rios que possuem entre 2 e 4 filhos e recebem sal�rio 
-- abaixo de 2000.
SELECT *FROM CADFUN WHERE FILHOS BETWEEN 2 AND 4 AND SALARIO < 2000;

-- 18. Apresentar uma consulta com todos os campos 
-- (colunas) de todos os registros dos funcion�rios que 
-- possuem abaixo de 2 e acima de 3 filhos.
SELECT *FROM CADFUN WHERE FILHOS < 2 OR FILHOS > 3;

-- 19. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros dos funcion�rios que possuem abaixo de 2 e acima de 3 filhos, 
-- cuja consulta exiba somente os registros dos funcion�rios que possuem filhos.
SELECT *FROM CADFUN WHERE (FILHOS < 2 OR FILHOS > 3) AND FILHOS <> 0;
-- 20. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros dos funcion�rios que possuem entre 2 e 3 filhos, utilizando o operador IN.
SELECT * FROM CADFUN WHERE FILHOS IN (2, 3);

-- 21. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros dos funcion�rios que possuem sobrenome SILVA.
SELECT *FROM CADFUN WHERE NOME LIKE '%SILVA'

-- 22. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros dos funcion�rios cujos nomes comecem com CA.
SELECT *FROM CADFUN WHERE NOME LIKE 'CA%'

-- 23. Quais s�o os funcion�rios que possuem sobrenome SANTOS? 
-- Apresentar apenas os nomes.
--SELECT NOME FROM CADFUN WHERE NOME LIKE '%SANTOS%'

-- 24. Qual � o nome e o departamento dos gerentes e dos analistas?
SELECT NOME, DEPTO FROM CADFUN WHERE FUNCAO IN ('Gerente', 'Analista')

-- 25. Listar os funcion�rios de c�digos 2, 5, e 9. 
-- Apresentar apenas os c�digos nomes e departamentos.
SELECT CODFUN, NOME, DEPTO FROM CADFUN WHERE CODFUN IN (2,5,9)

-- 26. Listar os os nomes e departamentos de todos os funcion�rios que 
-- n�o sejam do departamento 5.
SELECT NOME, DEPTO FROM CADFUN WHERE DEPTO NOT IN (5)

-- 27. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros dos funcion�rios que possuem em qualquer posi��o de seu nome
-- a palavra SILVA.
SELECT *FROM CADFUN WHERE NOME LIKE '%SILVA%'

-- 28. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros cujo sal�rio seja diferente de 2000.

SELECT *FROM CADFUN WHERE SALARIO !=2000
--SELECT * FROM CADFUN WHERE SALARIO <> 2000;, SELECT * FROM CADFUN WHERE NOT SALARIO = 2000;



update cadfun set salario = 500 where CODFUN = 2;

update CADFUN where nome










