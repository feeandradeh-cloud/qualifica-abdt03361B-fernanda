USE DB_03361B_FERNANDAANDRADE_AULA06;
-- Atividade Aula12

CREATE TABLE produtos_Aula12 (
    id_produto INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    quantidade_estoque INT
);

INSERT INTO produtos_Aula12 (id_produto, nome, preco, quantidade_estoque) VALUES
(1, 'Pão Francês', 5.50, 100),
(2, 'Pão Integral', 6.50, 90),
(3, 'Pão Queijo', 8.50, 50),
(4, 'Baguete', 8.50, 80),
(5, 'Bolo de Cenoura', 35.00, 15),
(6, 'Bolo de Milho', 30.00, 10),
(7, 'Sonho', 7.50, 50),
(8, 'Torta de Banana', 45.00, 8),
(9, 'Bolo de Milho', 30.00, 10);

UPDATE produtos_Aula12
SET preco = 47.00, quantidade_estoque = 5
WHERE id_produto = 8;

DELETE FROM produtos_Aula12
WHERE id_produto = 4;

SELECT * FROM produtos_Aula12;









