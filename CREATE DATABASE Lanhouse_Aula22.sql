CREATE DATABASE Lanhouse;
USE Lanhouse;

CREATE TABLE Computador
(
    id INT PRIMARY KEY IDENTITY,
    identificacao VARCHAR(5),
    valor DECIMAL DEFAULT 2.00
);

INSERT INTO Computador (identificacao, valor) VALUES
('PC01', 2.00), 
('PC02', 2.00),
('PC03', 2.50); 

CREATE TABLE Cliente
(
    id INT PRIMARY KEY IDENTITY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    telefone VARCHAR(20)
);

INSERT INTO Cliente (nome, email, telefone) VALUES
('João Silva', 'joao.silva@yahoo.com', '11111111111'),
('Maria Oliveira', 'maria.o@gmail.com', '2222222222'),
('Pedro Souza', 'pedro.s@hotmail.com', '33333333333');

CREATE TABLE Sessao
(
    id INT PRIMARY KEY IDENTITY,
    id_cliente INT NOT NULL,
    id_computador INT NOT NULL,
    data_inicio DATE DEFAULT CURRENT_TIMESTAMP,
    data_fim DATE
    -- DEFINAM AS CONTRAINTS PARA VOCÊS TREINAREM
);


INSERT INTO Sessao (id_cliente, id_computador, data_inicio, data_fim) VALUES
(
    1, 
    1, 
    DATEADD(HOUR, -5, GETDATE()), 
    DATEADD(HOUR, -1.5, GETDATE()) 
);


INSERT INTO Sessao (id_cliente, id_computador, data_inicio, data_fim) VALUES
(
    2, 
    3, 
    DATEADD(HOUR, -2, GETDATE()), 
    DATEADD(HOUR, -1, GETDATE()) 
);


INSERT INTO Sessao (id_cliente, id_computador, data_inicio, data_fim) VALUES
(
    3, 
    2, 
    DATEADD(HOUR, -0.5, GETDATE()), 
    NULL 
);

-- LISTAR TODAS AS SESSÕES QUE AINDA NÃO FINALIZADAS
USE Lanhouse;
SELECT
    S.id AS 'ID da Sessão',
    C.nome AS 'Nome do Usuário',
    C.email AS 'Email do Usuário',
    Comp.identificacao AS 'Identificador do Computador'
FROM
    Sessao S
INNER JOIN
    Cliente C ON S.id_cliente = C.id
INNER JOIN
    Computador Comp ON S.id_computador = Comp.id
WHERE
    S.data_fim IS NULL; 

-- LISTAR TODAS AS SESSÕES FINALIZADAS E QUANTAS HORAS CADA SESSÃO DUROU

USE Lanhouse;
SELECT
    S.id AS 'ID da Sessão',
    C.nome AS 'Nome do Usuário',
    C.email AS 'Email do Usuário',
    Comp.identificacao AS 'Identificador do Computador',
    DATEDIFF(HOUR, S.data_inicio, S.data_fim) AS 'Horas Usadas'
FROM
    Sessao S
INNER JOIN
    Cliente C ON S.id_cliente = C.id
INNER JOIN
    Computador Comp ON S.id_computador = Comp.id
WHERE
    S.data_fim IS NOT NULL; 

-- LISTAR TODAS AS SESSÕES NÃO FINALIZADAS E O VALOR DEVIDO PELA SESSÃO

USE Lanhouse;
SELECT
    S.id AS 'ID da Sessão',
    C.nome AS 'Nome do Usuário',
    C.email AS 'Email do Usuário',
    Comp.identificacao AS 'Identificador do Computador',
    (DATEDIFF(MINUTE, S.data_inicio, GETDATE()) / 60.0) * Comp.valor AS 'Valor Total Devido (R$)'
FROM
    Sessao S
INNER JOIN
    Cliente C ON S.id_cliente = C.id
INNER JOIN
    Computador Comp ON S.id_computador = Comp.id
WHERE
    S.data_fim IS NULL; 