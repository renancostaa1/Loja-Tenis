create database LOJA;

use loja;

create table tabela_produtos
(COD_PROD varchar(45) not null primary key,
NOM_PROD varchar(5) not null,
TAMANHO INT NOT NULL,
PRECO_REVENDA INT NOT NULL);

CREATE TABLE tabela_vendedores 
(COD_VEND varchar(5) not null primary key,
NOME varchar(50) not null,
DATA_ADMISSAO date not null,
QTD_VENDAS int not null);

create table tabela_clientes 
(CPF varchar(11) not null primary key,
NOME varchar (100) not null,
ENDEREÇO_1 varchar(100) not null,
ENDEREÇO_2 varchar(100),
BAIRRO varchar(25) not null,
CIDADE varchar(30) not null,
ESTADO varchar(2) not null,
CEP varchar(8) not null,
DT_NASC date not null,
IDADE int not null,
SEXO varchar(15) not null,
VOLUME_DE_COMPRA int,
PRIMEIRA_COMPRA int);

alter table tabela_vendedores drop column QTD_VENDAS;

ALTER TABLE tabela_clientes
ADD COD_CLI varchar(5) not null ;


CREATE TABLE notas_fiscais
(COD_CLI varchar(11) not null,
COD_VEND varchar(5) not null,
DATA_EMISSAO date,
COD_VENDA int primary key);

ALTER TABLE tabela_clientes
DROP PRIMARY KEY,
ADD PRIMARY KEY (COD_CLI);

create table itens_notas_fiscais
(COD_VENDA varchar(5) not null,
COD_PROD varchar(45) not null,
QTD int not null,
PRECO_REVENDA int not null,
primary key(COD_VENDA, COD_PROD));


