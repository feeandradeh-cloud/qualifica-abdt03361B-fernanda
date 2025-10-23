USE DB_03361B_FERNANDAANDRADE_AULA06;

CREATE TABLE A18_Departamento (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome_departamento VARCHAR(100)
);

CREATE TABLE A18_Cargo (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome_cargo VARCHAR(100),
    salario DECIMAL(10, 2)
);

CREATE TABLE A18_Funcionario (
	matricula INT PRIMARY KEY AUTO_INCREMENT,
    id_cargo INT NOT NULL,
    id_departamento INT NOT NULL,
    nome VARCHAR(100),
    sobrenome VARCHAR(100),
    CONSTRAINT fk_a18_funcionario_cargo
    FOREIGN KEY (id_cargo) REFERENCES A18_Cargo(id),
    CONSTRAINT fk_a18_funcionario_departamento
    FOREIGN KEY (id_departamento) REFERENCES A18_Departamento(id)
) AUTO_INCREMENT=100000;

CREATE TABLE A18_Nivel_Cargo (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nivel VARCHAR(100),
    sal_min DECIMAL(10, 2),
    sal_max DECIMAL(10, 2)
);

INSERT INTO A18_Nivel_Cargo (nivel, sal_min, sal_max) VALUES
("Junior", 3500.00, 5000.00),
("Pleno", 5500.00, 7000.00),
("Senior", 7500.00, 15000.00);

INSERT INTO A18_Departamento (nome_departamento)
VALUES
('Inovação'),
('Recursos Humanos'),
('Financeiro'),
('Marketing'),
('Tecnologia da Informação');

INSERT INTO A18_Cargo (nome_cargo, salario)
VALUES
-- Departamento: Inovação
('Analista de Inovação Júnior', 4500.00),
('Analista de Inovação Pleno', 6200.00),
('Gerente de Inovação', 9800.00),
('Pesquisador de Novas Tecnologias', 7200.00),
('Coordenador de Projetos Inovadores', 8500.00),
('Estagiário de Inovação', 2000.00),

-- Departamento: Recursos Humanos
('Analista de RH Júnior', 4000.00),
('Analista de RH Pleno', 5500.00),
('Coordenador de RH', 7500.00),
('Gerente de RH', 9500.00),
('Assistente de RH', 3200.00),
('Estagiário de RH', 1800.00),

-- Departamento: Financeiro
('Analista Financeiro Júnior', 4200.00),
('Analista Financeiro Pleno', 5800.00),
('Coordenador Financeiro', 8200.00),
('Gerente Financeiro', 10500.00),
('Assistente Financeiro', 3100.00),
('Tesoureiro', 6800.00),

-- Departamento: Marketing
('Analista de Marketing Júnior', 4100.00),
('Analista de Marketing Pleno', 5600.00),
('Coordenador de Marketing', 7800.00),
('Gerente de Marketing', 9800.00),
('Designer Gráfico', 4700.00),
('Estagiário de Marketing', 1900.00),

-- Departamento: Tecnologia da Informação
('Desenvolvedor Júnior', 4800.00),
('Desenvolvedor Pleno', 6700.00),
('Desenvolvedor Sênior', 9100.00),
('Analista de Suporte Técnico', 5200.00),
('Gerente de TI', 11000.00),
('Estagiário de TI', 2100.00);

INSERT INTO A18_Funcionario (id_cargo, id_departamento, nome, sobrenome)
VALUES
-- Departamento: Recursos Humanos (id_departamento = 2)
(7, 2, 'Ana', 'Souza'),
(8, 2, 'Bruno', 'Moraes'),
(9, 2, 'Carla', 'Santos'),
(10, 2, 'Daniel', 'Ferreira'),
(11, 2, 'Eduarda', 'Lima'),
(12, 2, 'Felipe', 'Rocha'),
(7, 2, 'Gabriela', 'Oliveira'),
(8, 2, 'Henrique', 'Pereira'),
(9, 2, 'Isabela', 'Monteiro'),
(10, 2, 'João', 'Martins'),
(11, 2, 'Karen', 'Costa'),
(12, 2, 'Lucas', 'Barbosa'),
(7, 2, 'Mariana', 'Gomes'),
(8, 2, 'Nathalia', 'Ribeiro'),
(9, 2, 'Otávio', 'Fernandes'),
(10, 2, 'Paula', 'Silva'),
(11, 2, 'Rafael', 'Carvalho'),
(12, 2, 'Sofia', 'Araújo'),
(7, 2, 'Tiago', 'Nascimento'),
(8, 2, 'Vanessa', 'Castro'),

-- Departamento: Financeiro (id_departamento = 3)
(13, 3, 'André', 'Rodrigues'),
(14, 3, 'Bianca', 'Cardoso'),
(15, 3, 'Caio', 'Mendes'),
(16, 3, 'Denise', 'Lopes'),
(17, 3, 'Elias', 'Gonçalves'),
(18, 3, 'Fernanda', 'Dias'),
(13, 3, 'Guilherme', 'Teixeira'),
(14, 3, 'Helena', 'Souza'),
(15, 3, 'Igor', 'Cavalcante'),
(16, 3, 'Juliana', 'Nunes'),
(17, 3, 'Kevin', 'Farias'),
(18, 3, 'Larissa', 'Machado'),
(13, 3, 'Marcelo', 'Pinto'),
(14, 3, 'Natália', 'Rezende'),
(15, 3, 'Otto', 'Siqueira'),
(16, 3, 'Patrícia', 'Freitas'),
(17, 3, 'Renato', 'Correia'),
(18, 3, 'Simone', 'Barros'),
(13, 3, 'Thiago', 'Peixoto'),
(14, 3, 'Viviane', 'Carneiro'),

-- Departamento: Marketing (id_departamento = 4)
(19, 4, 'Aline', 'Araújo'),
(20, 4, 'Bernardo', 'Queiroz'),
(21, 4, 'Camila', 'Xavier'),
(22, 4, 'Diego', 'Andrade'),
(23, 4, 'Esther', 'Leal'),
(24, 4, 'Fábio', 'Tavares'),
(19, 4, 'Giovana', 'Almeida'),
(20, 4, 'Hugo', 'Campos'),
(21, 4, 'Ingrid', 'Ferraz'),
(22, 4, 'Joana', 'Rezende'),
(23, 4, 'Kaique', 'Vasconcelos'),
(24, 4, 'Larissa', 'Meireles'),
(19, 4, 'Marcos', 'Prado'),
(20, 4, 'Nina', 'Costa'),
(21, 4, 'Otávia', 'Moreira'),
(22, 4, 'Pedro', 'Sampaio'),
(23, 4, 'Quésia', 'Ramos'),
(24, 4, 'Rogério', 'Furtado'),
(19, 4, 'Samuel', 'Pereira'),
(20, 4, 'Talita', 'Assis'),

-- Departamento: Tecnologia da Informação (id_departamento = 5)
(25, 5, 'Alex', 'Moraes'),
(26, 5, 'Bruna', 'Dias'),
(27, 5, 'Carlos', 'Henrique'),
(28, 5, 'Daniela', 'Souza'),
(29, 5, 'Eduardo', 'Gomes'),
(30, 5, 'Fernanda', 'Silveira'),
(25, 5, 'Gabriel', 'Rocha'),
(26, 5, 'Helena', 'Ferreira'),
(27, 5, 'Ismael', 'Lima'),
(28, 5, 'Jéssica', 'Carvalho'),
(29, 5, 'Kleber', 'Machado'),
(30, 5, 'Letícia', 'Costa'),
(25, 5, 'Matheus', 'Pereira'),
(26, 5, 'Nicole', 'Barbosa'),
(27, 5, 'Otávio', 'Oliveira'),
(28, 5, 'Patrícia', 'Ribeiro'),
(29, 5, 'Rogério', 'Fernandes'),
(30, 5, 'Sabrina', 'Freitas'),
(25, 5, 'Tiago', 'Santos'),
(26, 5, 'Vitória', 'Alves');

-- Desafio 1
SELECT
    D.id,
    D.nome_departamento,
    COUNT(F.matricula) AS n_funcionarios
FROM
    A18_Departamento AS D
LEFT JOIN
    A18_Funcionario AS F ON D.id = F.id_departamento
GROUP BY
    D.id, D.nome_departamento
ORDER BY
    D.id;

SELECT
    D.nome_departamento,
    COUNT(F.matricula) AS total_funcionarios
FROM
    A18_Departamento AS D
LEFT JOIN
    A18_Funcionario AS F ON D.id = F.id_departamento
GROUP BY
    D.nome_departamento
ORDER BY
    D.nome_departamento;

    -- Desafio 2
    
    SELECT
    f.matricula,
    f.nome,
    f.sobrenome,
    c.salario,
    nc.nivel
FROM
    A18_Funcionario AS f
JOIN
    A18_Cargo AS c ON f.id_cargo = c.id
JOIN
    A18_Nivel_Cargo AS nc ON c.salario BETWEEN nc.sal_min AND nc.sal_max
WHERE
    nc.nivel = 'Senior' -- Esta linha filtra para trazer apenas o nível Sênior
ORDER BY
    f.matricula;
    
-- Desafio 3
    
    SELECT
    f.matricula AS Matricula,
    CONCAT(f.nome, ' ', f.sobrenome) AS "Nome Completo",
    d.nome_departamento AS Departamento,
    nc.nivel AS "Nível Salarial",
    c.salario AS Salario
FROM
    A18_Funcionario f
INNER JOIN
    A18_Departamento d ON f.id_departamento = d.id
INNER JOIN
    A18_Cargo c ON f.id_cargo = c.id
INNER JOIN
    A18_Nivel_Cargo nc ON c.salario BETWEEN nc.sal_min AND nc.sal_max
WHERE
    d.nome_departamento = 'Financeiro'
    AND nc.nivel = 'Pleno'
ORDER BY
    "Nome Completo";