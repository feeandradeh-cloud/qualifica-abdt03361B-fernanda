USE DB_03361B_FERNANDAANDRADE_AULA06;
-- Atividade Aula10
CREATE TABLE Grupos_Aula10 (
    id_grupo INTEGER PRIMARY KEY,
    nome_grupo VARCHAR(50) NOT NULL UNIQUE
);

INSERT INTO Grupos_Aula10 (id_grupo, nome_grupo) VALUES
(1, 'Família'),
(2, 'Trabalho'),
(3, 'Amigos');

CREATE TABLE Contatos_Aula10 (
    id_contato INTEGER PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    id_grupo INTEGER,
    FOREIGN KEY (id_grupo) REFERENCES Grupos(id_grupo)
);

INSERT INTO Contatos_Aula10 (id_contato, nome, email, id_grupo) VALUES
(401, 'Manuela Neri', 'manuela.neri@gmail.com', 1),
(402, 'Miriam Santos', 'miriam.santos@yahoo.com', 2),
(403, 'Sergio Andrade', 'sergio.andrade@outlook.com', 3);

CREATE TABLE Telefones_Aula10 (
    id_telefone INTEGER PRIMARY KEY,
    id_contato INTEGER NOT NULL,
    numero VARCHAR(20) NOT NULL,
    tipo VARCHAR(20),
    FOREIGN KEY (id_contato) REFERENCES Contatos(id_contato)
);

INSERT INTO Telefones_Aula10 (id_telefone, id_contato, numero, tipo) VALUES
(5001, 401, '99123-4567', 'Celular'),    
(5002, 401, '3300-1234', 'Residencial'),
(5003, 402, '99876-5432', 'Comercial'),  
(5004, 403, '99555-1111', 'Celular');

SELECT * FROM Grupos_Aula10;

SELECT * FROM Contatos_Aula10;

SELECT * FROM Telefones_Aula10;

SELECT
    C.nome AS Contato,
    G.nome_grupo AS Grupo,
    T.numero AS Telefone,
    T.tipo AS Tipo_Telefone
FROM
    Contatos_Aula10 C  -- Tabela alterada
JOIN
    Grupos_Aula10 G ON C.id_grupo = G.id_grupo 
JOIN
    Telefones_Aula10 T ON C.id_contato = T.id_contato
ORDER BY
    Contato, Tipo_Telefone;

