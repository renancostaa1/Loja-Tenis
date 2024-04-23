use loja;

INSERT INTO tabela_vendedores (COD_VEND, NOME, DATA_ADMISSAO)
VALUES 
    (00001, 'João da Silva', '2022-01-15'),
    (00002, 'Maria Oliveira', '2021-09-20'),
    (00003, 'Pedro Santos', '2023-03-10'),
    (00004, 'Thais Costa', '2024-01-12');
    
    select * from tabela_vendedores;
    
    ALTER TABLE tabela_produtos
MODIFY COLUMN COD_PROD VARCHAR(255);

  ALTER TABLE tabela_produtos
MODIFY COLUMN COD_PROD VARCHAR(5);


INSERT INTO tabela_produtos (COD_PROD, NOM_PROD, TAMANHO, PRECO_REVENDA)
VALUES 
    (12121, 'Tênis Nike Air Force 1 07 Masculino', 42, 859.99),
    (32322, 'Tênis Nike Air Max Plus Masculino', 39, 1149.99),
    (33434, 'Air Jordan 3 Retro', 44, 1299.99),
    (33431, 'Air Jordan 3 Retro', 42, 1299.99),
    (87654, 'Dunk Low', 41, 949.99),
    (87655, 'Dunk Low', 41, 949.99),
    (12122, 'Tênis Nike Air Force 1 07 Masculino', 43, 859.99);
    
    SELECT * FROM tabela_produtos;
    
    ALTER TABLE tabela_clientes
MODIFY COLUMN PRIMEIRA_COMPRA date;

    
   INSERT INTO tabela_clientes (CPF, NOME, ENDEREÇO_1, ENDEREÇO_2, BAIRRO, CIDADE, ESTADO, CEP, DT_NASC, IDADE, SEXO, VOLUME_DE_COMPRA, PRIMEIRA_COMPRA, COD_CLI)
VALUES 
    ('12345678900', 'Roberto Berto', 'Rua Principal, 123', 'Apto 101', 'Centro', 'Cidade A', 'UF', '12345674', '1990-05-15', 32, 'M', 3, '2020-01-01', 1),
    ('12345673800', 'Julia da Silva', 'Rua Jose da Costa, 123', 'Apto 3', 'Centro', 'São Paulo', 'SP', '9086899', '2000-06-22', 23, 'F', 2, '2022-04-11', 2),
    ('12345678900', 'João Pedro Vieira', 'Rua Principal, 123', 'Apto 101', 'Centro', 'Cidade A', 'UF', '12345678', '1990-05-15', 32, 'M', 1000, '2020-01-01', 3),
    ('98765432100', 'Robert da Silva', 'Avenida Secundária, 456', 'Casa', 'Bairro B', 'Cidade B', 'UF', '98765432', '1985-10-20', 36, 'M', 1500, '2019-05-10', 4),
    ('11122233300', 'Mauro Oliveira', 'Rua Alternativa, 789', '', 'Subúrbio', 'Cidade C', 'UF', '54321987', '1988-03-25', 33, 'M', 800, '2022-02-20', 5);
    
    select * from tabela_clientes;
    
UPDATE tabela_clientes
SET VOLUME_DE_COMPRA = 2
WHERE NOME = 'João Pedro Vieira';


    
INSERT INTO NOTAS_FISCAIS (COD_CLI, COD_VEND, DATA_EMISSAO, COD_VENDA)
VALUES 
    (1, 00001, '2024-04-25', 1001),
    (2, 00002, '2024-04-26', 1002),
    (3, 00003, '2024-04-27', 1003),
    (4, 00004, '2024-04-28', 1004),
    (5, 00002, '2024-04-29', 1005),
    (5, 00002, '2024-04-30', 1006),
    (5, 00002, '2024-05-01', 1007),
    (1, 00004, '2024-05-02', 1008),
    (2, 00004, '2024-05-03', 1009),
    (1, 00003, '2024-05-04', 1010),
    (1, 00002, '2024-05-05', 1011),
    (2, 00003, '2024-05-06', 1012),
    (3, 00002, '2024-05-07', 1013),
    (4, 00002, '2024-05-08', 1014),
    (5, 00002, '2024-05-09', 1015),
    (2, 00002, '2024-05-10', 1016),
    (3, 00002, '2024-05-11', 1017),
    (4, 00004, '2024-05-12', 1018),
    (5, 00004, '2024-05-13', 1019),
    (2, 00004, '2024-05-14', 1020);

SELECT * FROM notas_fiscais;

INSERT INTO itens_notas_fiscais (COD_VENDA, COD_PROD, QTD, PRECO_REVENDA)
VALUES 
    (1001, 12121, 1, 859.99),
    (1002, 32322, 1, 1149.99),
    (1003, 33434, 1, 1299.99),
    (1004, 32322, 1, 1149.99),
    (1005, 87654, 1, 949.99),
    (1006, 12122, 1, 859.99),
    (1007, 12121, 1, 859.99),
    (1008, 12122, 1, 859.99),
    (1009, 12121, 1, 859.99),
    (1010, 33434, 1, 1299.99),
    (1011, 87654, 1, 949.99),
    (1012, 12121, 1, 859.99),
    (1013, 12121, 1, 859.99),
    (1014, 33434, 1, 1299.99),
    (1015, 12121, 1, 859.99),
    (1016, 87655, 1, 949.99),
    (1017, 87655, 1, 949.99),
    (1018, 33431, 1, 1299.99),
    (1019, 32322, 1, 1149.99),
    (1020, 33431, 1, 1299.99);

SELECT * FROM itens_notas_fiscais;
