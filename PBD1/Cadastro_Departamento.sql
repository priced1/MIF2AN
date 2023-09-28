----------------------------------VIZUALIZAR DADOS DAS TABELAS----------------------------------------------------
SELECT *FROM DEPARTAMENTO;
SELECT *FROM EMPREGADO;

------------------------------INSERIR DADOS NA TABELA DEPARTAMENTO----------------------------------------------------
insert into DEPARTAMENTO
(COD_DEPTO, NOME_DEPTO)
values (10, 'TECNOLOGIA');
GO
insert into DEPARTAMENTO
(COD_DEPTO, NOME_DEPTO)
values (20, 'VENDAS');
GO
insert into DEPARTAMENTO
(COD_DEPTO, NOME_DEPTO)
values (30, 'FINANCEIRO');

----------------------------------INSERIR DADOS NA TABELA EMPREGADO----------------------------------------------------
insert into EMPREGADO 
(MATRICULA, NOME, COD_DEPTO)
values (1,'GESSIVAN', '-');


