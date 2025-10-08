CREATE DATABASE DB_03361B_FERNANDAANDRADE_AULA06;
USE DB_03361B_FERNANDAANDRADE_AULA06;

CREATE TABLE Fornecedores (

	id_fornecedor INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(150) NOT NULL,
	contato VARCHAR(150),
	telefone VARCHAR(15)
);

INSERT INTO Fornecedores (nome, contato, telefone) VALUES
	("Klabin", "Sergio Cirilo", "1123575060"),
    ("Bic", "Joana Andrade", "2135602780"),
	("Parizotto", "Manuela Santos", "75957018050");
	
    SELECT *
FROM Fornecedores;

SELECT nome, telefone
FROM Fornecedores;

SELECT *
FROM Fornecedores
ORDER BY nome ASC;

CREATE TABLE Produtos (

	id_produto INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL,
	preco_venda DECIMAL(10, 2) NOT NULL,
	estoque SMALLINT NOT NULL,
	id_fornecedor INT,
	FOREIGN KEY (id_fornecedor) REFERENCES Fornecedores(id_fornecedor)
);

INSERT INTO Produtos (nome, preco_venda, estoque, id_fornecedor) VALUES
	("Caderno 10 Matérias", 25.90, 50, 1),
	("Caneta Preta", 3.50, 200, 2),
	("Lápis HB", 1.50, 300, 3),
	("Borracha Rosa", 2.00, 150, 3);
    
SELECT *
FROM Produtos;

SELECT nome, preco_venda
FROM Produtos
LIMIT 2;

SELECT nome, estoque
FROM Produtos
ORDER BY estoque DESC;

CREATE TABLE Vendas (

	id_venda INT PRIMARY KEY AUTO_INCREMENT,
	id_produto INT,
	data_venda DATE,
	quantidade SMALLINT NOT NULL,
	valor_total DECIMAL(10, 2) NOT NULL,
	FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto)
);

INSERT INTO Vendas (id_produto, data_venda, quantidade, valor_total) VALUES
	(1, '2025-10-03', 2, 51.80),
    (2, '2025-10-06', 5, 17.50),
	(3, '2025-10-07', 10, 15.00);

SELECT *
FROM Vendas;

SELECT id_venda, valor_total
FROM Vendas
ORDER BY valor_total DESC;

SELECT *
FROM Vendas
WHERE data_venda >= '2025-10-03';  

  


