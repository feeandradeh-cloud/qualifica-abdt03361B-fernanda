USE DB_03361B_FERNANDAANDRADE_AULA20;

CREATE TABLE ProdutoPadaria
(
    id INT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(100),
    preco DECIMAL(10, 2)
);

INSERT INTO ProdutoPadaria
    (nome, preco)
VALUES
    ('Pão Francês', 0.80),
    ('Pão de Queijo', 2.50),
    ('Croissant', 4.00),
    ('Baguete', 5.50),
    ('Pão Integral', 6.00),
    ('Pão de Forma', 7.50),
    ('Rosca Doce', 4.20),
    ('Sonho com Creme', 5.00),
    ('Pão de Batata', 3.80),
    ('Enroladinho de Salsicha', 4.50),
    ('Coxinha', 5.00),
    ('Empada de Frango', 5.50),
    ('Pastel de Carne', 6.00),
    ('Pastel de Queijo', 6.00),
    ('Torta de Frango', 7.50),
    ('Torta de Palmito', 8.00),
    ('Pão Doce com Coco', 3.50),
    ('Pão Recheado com Presunto e Queijo', 5.00),
    ('Pão Australiano', 7.00),
    ('Pão de Milho', 4.80),
    ('Mini Pizza', 6.00),
    ('Esfirra de Carne', 5.00),
    ('Esfirra de Queijo', 5.00),
    ('Pão Sírio', 6.00),
    ('Bolo de Cenoura', 8.50),
    ('Bolo de Chocolate', 9.00),
    ('Bolo de Fubá', 7.50),
    ('Bolo de Milho', 8.00),
    ('Bolo de Laranja', 8.00),
    ('Bolo de Limão', 8.00),
    ('Pão com Calabresa', 5.20),
    ('Pão com Catupiry', 5.30),
    ('Torta de Morango', 9.50),
    ('Torta de Limão', 9.00),
    ('Torta de Maracujá', 9.00),
    ('Brownie', 6.00),
    ('Cookies', 4.00),
    ('Pão de Centeio', 6.50),
    ('Pão de Linhaça', 6.80),
    ('Pão Multigrãos', 7.20),
    ('Pão de Banana', 5.50),
    ('Mini Croissant de Chocolate', 3.80),
    ('Mini Pão de Queijo', 1.50),
    ('Pão de Aveia', 6.00),
    ('Empadão de Frango', 9.50),
    ('Torta de Chocolate', 10.00),
    ('Brioche', 6.50),
    ('Pão de Alho', 4.00),
    ('Pão Sovado', 5.00),
    ('Rocambole de Doce de Leite', 9.00),
    ('Rocambole de Chocolate', 9.00);

SELECT
    nome,
    UPPER(nome) AS Nome_Maiusculo,
    LOWER(nome) AS Nome_Minusculo,
    LEN(nome) AS Total_Letras,
    LEFT(nome, 3) AS Tres_Primeiras_Letras,
    preco,
    ROUND(preco, 0) AS Preco_Arredondado_0_Casas,
    GETDATE() AS Data_Atual
FROM
    ProdutoPadaria;