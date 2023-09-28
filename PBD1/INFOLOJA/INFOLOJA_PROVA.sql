--1- cadastre um pedido para o cliente Lucas. O codigo do pedido deve ser 3 e a data de sua escolha
insert into PEDIDO values (3, GETDATE(), 3)
select *from PEDIDO

--2- insira 3 itens para o pedido de numero 2, com quantidades diferentes.
INSERT INTO ITEM_PEDIDO values (2,5,3)
INSERT INTO ITEM_PEDIDO values (2,3,7)
INSERT INTO ITEM_PEDIDO values (2,5,2)
SELECT *FROM PEDIDO, ITEM_PEDIDO

--3- exclua o cliente de codigo 4--
delete from CLIENTE where CD_CLIENTE= 4;
select *from CLIENTE

--4- altere a descriçao do produto de codigo 6 para "Memoria de 8GB"
update PRODUTO set DS_PRODUTO= 'MEMORIA DE 8GB' where CD_PRODUTO= 6; 
select *fROM PRODUTO

--5- Faça uma consulta que retorne o codigo e nome do cliente, a data do pedido e a quantidade e a quantidade. Filtrar somente o pedido da Paloma

select cliente.CD_CLIENTE,
	CLIENTE.NM_CLIENTE, 
	PEDIDO.DT_PEDIDO,
	ITEM_PEDIDO.QT_PRODUTO,
	ITEM_PEDIDO.QT_PRODUTO
		FROM 
		CLIENTE JOIN PEDIDO
			ON CLIENTE.CD_CLIENTE = PEDIDO. CD_CLIENTE
					JOIN ITEM_PEDIDO
			ON PEDIDO.CD_PEDIDO = ITEM_PEDIDO.CD_PEDIDO
		WHERE 
		CLIENTE.CD_CLIENTE = '2'