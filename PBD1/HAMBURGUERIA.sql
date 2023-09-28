create database ZEBD
GO
use ZEBD
go

create table CLIENTE(
COD_CLIENTE int  primary key not null,
NOME varchar(50) not null,
NUM_RES varchar(20) not null,
PONTOS int,
CEP int not null
)
go

create table ENDERECO(
CEP int primary key not null, 
LOGRADOURO varchar(100) not null,
CIDADE varchar(30) not null,
ESTADO char(2) not null
)

go

create table PEDIDO(
COD_PEDIDO int primary key not null,
DATA_PED datetime not null,
COD_CLIENTE int not null,
VALOR decimal(10,2) not null
)

select *from ENDERECO, CLIENTE, PEDIDO

alter table CLIENTE add constraint FK_CLIENTE_ENDERECO foreign key (CEP) references ENDERECO (CEP);
GO
alter table PEDIDO add constraint FK_PEDIDO_CLIENTE foreign key (COD_CLIENTE) references CLIENTE (COD_CLIENTE);

create table CUPOM(
COD_CUPOM int primary key not null,
VALOR decimal(10,2) not null,
PONTOS_CUPONS int, 
VALIDADE datetime not null,
DESC_CUPOM decimal(10,2) not null
)








/*COD_CLIENTE é a chave estrangeira*/

create table ITEM_PEDIDO(
COD_PEDIDO int not null,
COD_PRODUTO int not null,
QTD_PRODUTO int not null
)
--REL COM PEDIDO (ITEM_PEDIDO)
create table PRODUTO(
COD_PRODUTO int primary key not null,
DESC_PRODUTO varchar (30) not null,
VOLUME int not null,
PRECO decimal(10,2) not null,
VALIDADE datetime not null
)

/*create table TIPO_PAGAMENTO(
)
create table MEIO_PAGAMENTO(
)
create table STATUS_PED(
)*/