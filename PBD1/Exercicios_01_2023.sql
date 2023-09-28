/*
Exercícios - Lista 01
*/
-- 1 - Faça a listagem dos nomes e funções de todos os funcionários.

SELECT NOME, FUNCAO FROM CADFUN;
-- 2 - Faça a listagem dos códigos, nomes e funções de todos os funcionários.

SELECT CODFUN, NOME, FUNCAO FROM CADFUN;
-- 3 - Elabore a listagem dos códigos, nomes, funções e departamentos de todos os 
-- funcionários.

SELECT CODFUN, NOME, FUNCAO, DEPTO FROM CADFUN;
-- 4 - Quais são os nomes dos funcionários do departamento 5?

SELECT NOME, DEPTO FROM CADFUN WHERE DEPTO= '5';
-- 5 - Quais são os nomes e os departamentos dos funcionários que ocupam o 
--cargo de vendedor ?
SELECT NOME, DEPTO FROM CADFUN WHERE FUNCAO= 'VENDEDOR';

-- 6 - Quais são os salários dos funcionários do departamento 3?
SELECT SALARIO FROM CADFUN WHERE DEPTO = '3';

-- 7 - Construa a listagem do nome e da função de todos os funcionários ordenados 
-- de forma descendente pela descrição da função.
SELECT NOME, FUNCAO FROM CADFUN ORDER BY FUNCAO DESC;

-- 8 - Faça a listagem das funções e dos nomes de todos os funcionários ordenando 
--a coluna de funções de forma ascendente e a coluna de nomes de forma descendente.

SELECT FUNCAO, NOME FROM CADFUN ORDER BY FUNCAO, NOME DESC;

-- 9 - Elabore a listagem de todas as colunas dos registros que tenham 
-- letra "E" no nome;

SELECT *FROM CADFUN WHERE NOME like '%E%';

-- 10 - Quais são os nomes e os departamentos dos funcionários que ocupam o 
-- cargo de analista e que tenham salário maior que 1200?

SELECT NOME, DEPTO FROM CADFUN WHERE FUNCAO= 'ANALISTA' AND SALARIO>=1200;







