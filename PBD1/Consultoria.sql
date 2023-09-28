create database CONSULTORIA;
go
use CONSULTORIA;
go
------------------------------------CONSTRUÇÃO DO BANCO--------------------------------------------------------
create table EMPREGADO(
MATRICULA int primary key not null,
NOME varchar(30),
COD_DEPTO int
);
go

create table DEPARTAMENTO(
COD_DEPTO int primary key ,
NOME_DEPTO varchar(30)
);
go

create table PROJETO(
COD_PROJ int primary key not null,
NOME_PROJ varchar(30),
GERENTE int
);
go

--CRIAR TABELA ASSOCIATIVA
create table EMPREGADO_PROJETO(
COD_PROJ int not null,
MATRICULA int
)

------------------------------------MUDAR DADOS DA TABELA-------------------------------------------------------

alter table EMPREGADO add constraint FK_EMPREGADO_DEPTO foreign key (COD_DEPTO) REFERENCES DEPARTAMENTO (COD_DEPTO);
go
alter table PROJETO add constraint FK_EMPREGADO_PROJETO foreign key (GERENTE) REFERENCES EMPREGADO (MATRICULA);
go
alter table EMPREGADO_PROJETO add constraint FK_COD_PROJETO foreign key (COD_PROJ) REFERENCES PROJETO(COD_PROJ);
go
alter table EMPREGADO_PROJETO add constraint FK_EMPREGADO foreign key (MATRICULA) REFERENCES EMPREGADO(MATRICULA);

----------------------------------------------------------------------------------------------------------------

