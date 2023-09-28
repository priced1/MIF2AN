/*
Exerc�cios - Lista 01
*/
-- 1 - Fa�a a listagem dos nomes e fun��es de todos os funcion�rios.

SELECT NOME, FUNCAO FROM CADFUN;
-- 2 - Fa�a a listagem dos c�digos, nomes e fun��es de todos os funcion�rios.

SELECT CODFUN, NOME, FUNCAO FROM CADFUN;
-- 3 - Elabore a listagem dos c�digos, nomes, fun��es e departamentos de todos os 
-- funcion�rios.

SELECT CODFUN, NOME, FUNCAO, DEPTO FROM CADFUN;
-- 4 - Quais s�o os nomes dos funcion�rios do departamento 5?

SELECT NOME, DEPTO FROM CADFUN WHERE DEPTO= '5';
-- 5 - Quais s�o os nomes e os departamentos dos funcion�rios que ocupam o 
--cargo de vendedor ?
SELECT NOME, DEPTO FROM CADFUN WHERE FUNCAO= 'VENDEDOR';

-- 6 - Quais s�o os sal�rios dos funcion�rios do departamento 3?
SELECT SALARIO FROM CADFUN WHERE DEPTO = '3';

-- 7 - Construa a listagem do nome e da fun��o de todos os funcion�rios ordenados 
-- de forma descendente pela descri��o da fun��o.
SELECT NOME, FUNCAO FROM CADFUN ORDER BY FUNCAO DESC;

-- 8 - Fa�a a listagem das fun��es e dos nomes de todos os funcion�rios ordenando 
--a coluna de fun��es de forma ascendente e a coluna de nomes de forma descendente.

SELECT FUNCAO, NOME FROM CADFUN ORDER BY FUNCAO, NOME DESC;

-- 9 - Elabore a listagem de todas as colunas dos registros que tenham 
-- letra "E" no nome;

SELECT *FROM CADFUN WHERE NOME like '%E%';

-- 10 - Quais s�o os nomes e os departamentos dos funcion�rios que ocupam o 
-- cargo de analista e que tenham sal�rio maior que 1200?

SELECT NOME, DEPTO FROM CADFUN WHERE FUNCAO= 'ANALISTA' AND SALARIO>=1200;







