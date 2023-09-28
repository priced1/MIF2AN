/*
	Exercícios 02 - Operadores SQL
	Turma: MRD2AN	Data: 27/03/2023	
*/
-- 1. Quais operadores aritméticos podem ser utilizados?
+,-,*,/,%

-- 2. Quais símbolos são utilizados para alterar a prioridade de cálculo matemático?
(,)

-- 3. Quais são os operadores de comparação suportados?
=, <>,!=,>,>=,<,<=

-- 4. Quais são os operadores lógicos suportados?
AND, OR NOT

-- 5. Quais são os operadores auxiliares suportados?
LIKE, IN, BETWEEN, IS NULL/ IS NOT NULL, EXISTS/ NOT EXISTS

-- 6. Faça uma simulação para apresentar uma consulta com as colunas (campos)
-- CODFUN, NOME, SALARIO com salário somado a R$ 250.00.
SELECT CODFUN, NOME, SALARIO + 250.00 AS SALARIO_ATUALIZADO FROM CADFUN
--SELECT CODFUN, NOME, SALARIO + 250 FROM CADFUN;

-- 7. Faça uma simulação para apresentar uma consulta com as colunas (campos)
-- CODFUN, NOME, SALARIO com uma dedução de 7.5%.
SELECT CODFUN, NOME, SALARIO * 7.5 AS SALARIO_DEDUZIDO FROM CADFUN


-- 8. Apresente uma consulta com todos os campos (colunas) de todos os
-- registros cuja função seja igual a analista.
SELECT *FROM CADFUN WHERE FUNCAO= 'ANALISTA'

-- 9. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros cujo salário seja maior ou igual a R$ 1700.
SELECT *FROM CADFUN WHERE SALARIO >=1700.00

-- 10. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros cujo salário seja maior que R$ 1700.
SELECT *FROM CADFUN WHERE SALARIO >1700.00

-- 11. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros cujo salário seja menor que R$ 1700.
SELECT *FROM CADFUN WHERE SALARIO < 1700.00

-- 12. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros cujo salário igual a R$ 1700.
SELECT *FROM CADFUN WHERE SALARIO =1700.00

-- 13. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros dos funcionários com função de programador e de analista.
SELECT *FROM CADFUN WHERE FUNCAO IN ('programador', 'analista');
--SELECT * FOM CADFUN WHERE FUNCAO = 'PROGRAMADOR' OR FUNCAO = 'ANALISTA';

-- 14. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros dos funcionários com função de programador e de analista
-- que ganham acima de 1200.
SELECT *FROM CADFUN WHERE FUNCAO IN ('programador', 'analista') AND SALARIO > 1200;
--SELECT*FROM CADFUN WHERE(FUNÇÃO='PROGRAMADOR', OR FUNCAO='ANALISTA') AND SALARIO >1200

-- 15. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros dos funcionários que não ocupem as funções de programador e de analista.
SELECT *FROM CADFUN WHERE FUNCAO NOT IN ('programador', 'analista');
--SELECT * FROM CADFUN WHERE FUNCAO <> 'PROGRAMADOR' AND FUNCAO <> 'ANALISTA';, SELECT * FROM CADFUN WHERE NOT (FUNCAO = 'PROGRAMADOR' OR FUNCAO = 'ANALISTA');,SELECT * FROM CADFUN WHERE FUNCAO NOT IN ('PROGRAMADOR','ANALISTA');

-- 16. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros dos funcionários que possuem entre 2 e 4 filhos.
SELECT *FROM CADFUN WHERE FILHOS BETWEEN 2 AND 4;

-- 17. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros dos funcionários que possuem entre 2 e 4 filhos e recebem salário 
-- abaixo de 2000.
SELECT *FROM CADFUN WHERE FILHOS BETWEEN 2 AND 4 AND SALARIO < 2000;

-- 18. Apresentar uma consulta com todos os campos 
-- (colunas) de todos os registros dos funcionários que 
-- possuem abaixo de 2 e acima de 3 filhos.
SELECT *FROM CADFUN WHERE FILHOS < 2 OR FILHOS > 3;

-- 19. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros dos funcionários que possuem abaixo de 2 e acima de 3 filhos, 
-- cuja consulta exiba somente os registros dos funcionários que possuem filhos.
SELECT *FROM CADFUN WHERE (FILHOS < 2 OR FILHOS > 3) AND FILHOS <> 0;
-- 20. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros dos funcionários que possuem entre 2 e 3 filhos, utilizando o operador IN.
SELECT * FROM CADFUN WHERE FILHOS IN (2, 3);

-- 21. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros dos funcionários que possuem sobrenome SILVA.
SELECT *FROM CADFUN WHERE NOME LIKE '%SILVA'

-- 22. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros dos funcionários cujos nomes comecem com CA.
SELECT *FROM CADFUN WHERE NOME LIKE 'CA%'

-- 23. Quais são os funcionários que possuem sobrenome SANTOS? 
-- Apresentar apenas os nomes.
--SELECT NOME FROM CADFUN WHERE NOME LIKE '%SANTOS%'

-- 24. Qual é o nome e o departamento dos gerentes e dos analistas?
SELECT NOME, DEPTO FROM CADFUN WHERE FUNCAO IN ('Gerente', 'Analista')

-- 25. Listar os funcionários de códigos 2, 5, e 9. 
-- Apresentar apenas os códigos nomes e departamentos.
SELECT CODFUN, NOME, DEPTO FROM CADFUN WHERE CODFUN IN (2,5,9)

-- 26. Listar os os nomes e departamentos de todos os funcionários que 
-- não sejam do departamento 5.
SELECT NOME, DEPTO FROM CADFUN WHERE DEPTO NOT IN (5)

-- 27. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros dos funcionários que possuem em qualquer posição de seu nome
-- a palavra SILVA.
SELECT *FROM CADFUN WHERE NOME LIKE '%SILVA%'

-- 28. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros cujo salário seja diferente de 2000.

SELECT *FROM CADFUN WHERE SALARIO !=2000
--SELECT * FROM CADFUN WHERE SALARIO <> 2000;, SELECT * FROM CADFUN WHERE NOT SALARIO = 2000;



update cadfun set salario = 500 where CODFUN = 2;

update CADFUN where nome










