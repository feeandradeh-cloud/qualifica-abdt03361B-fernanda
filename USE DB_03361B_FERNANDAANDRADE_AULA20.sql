CREATE DATABASE DB_03361B_FERNANDAANDRADE_AULA20;

USE DB_03361B_FERNANDAANDRADE_AULA20;

CREATE TABLE Curso (
    id INT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(100) NOT NULL,
    total_creditos INT,
    carga_horaria INT
);

INSERT INTO Curso (nome, total_creditos, carga_horaria) VALUES
('Computação', 240, 3600),            
('Arquitetura', 220, 3300),
('Comunicação Social', 160, 2400),
('Direito', 280, 4200),
('História', 140, 2100);

CREATE TABLE Professor (
    matricula INT PRIMARY KEY IDENTITY(100,1),
    nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

INSERT INTO Professor (nome, sobrenome, email) VALUES
('Fernando', 'Costa', 'fernando.c@gmail.com'), 
('Beatriz', 'Lopes', 'beatriz.l@yahoo.com'),
('Ricardo', 'Almeida', 'ricardo.a@hotmail.com'),
('Sofia', 'Nunes', 'sofia.n@yahoo.com'),
('Guilherme', 'Melo', 'guilherme.m@gmail.com'); 

CREATE TABLE Disciplina (
    id INT PRIMARY KEY IDENTITY(10,1),
    id_professor INT,
    id_curso INT,
    nome VARCHAR(100) NOT NULL,
    carga_horaria INT,
    creditos INT,
    FOREIGN KEY (id_professor) REFERENCES Professor(matricula),
    FOREIGN KEY (id_curso) REFERENCES Curso(id)
);

INSERT INTO Disciplina (id_professor, id_curso, nome, carga_horaria, creditos) VALUES
(100, 1, 'Aplicação de Banco de Dados', 80, 4), 
(100, 1, 'Análise de Dados', 60, 3),            
(101, 2, 'Desenho Técnico', 80, 4),
(102, 3, 'Fotografia Digital', 40, 2),
(103, 4, 'Direito Constitucional', 80, 4),
(104, 5, 'História Antiga', 60, 3);

CREATE TABLE Aluno (
    matricula INT PRIMARY KEY IDENTITY(1000,1),
    id_curso INT,
    nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    FOREIGN KEY (id_curso) REFERENCES Curso(id)
);

INSERT INTO Aluno (id_curso, nome, sobrenome, email) VALUES
(1, 'João', 'Santos', 'joao.s@gmail.com'),     
(1, 'Bruno', 'Lima', 'bruno.l@yahoo.com'),
(2, 'Camila', 'Rocha', 'camila.r@hotmail.com'),
(3, 'Diego', 'Pires', 'diego.p@yahoo.com'),
(4, 'Elisa', 'Freitas', 'elisa.f@gmail.com');

CREATE TABLE AlunoDisciplina (
    matricula_aluno INT NOT NULL,
    id_disciplina INT NOT NULL,
    PRIMARY KEY (matricula_aluno, id_disciplina),
    FOREIGN KEY (matricula_aluno) REFERENCES Aluno(matricula),
    FOREIGN KEY (id_disciplina) REFERENCES Disciplina(id)
);

INSERT INTO AlunoDisciplina (matricula_aluno, id_disciplina) VALUES
(1000, 10), 
(1000, 11), 
(1001, 10), 
(1002, 11), 
(1004, 11); 

USE DB_03361B_FERNANDAANDRADE_AULA20;

-- Faça query básica para cada tabela, mostrando todas as colunas:

SELECT * FROM Curso;

SELECT * FROM Professor;

SELECT * FROM Disciplina;

SELECT * FROM AlunoDisciplina;

-- Liste todas as disciplinas de "Computação", usando apenas o ID do curso (SEM JOIN):

SELECT nome
FROM Disciplina
WHERE id_curso = 1;

-- Liste as disciplinas em que cada aluno está matriculado, com matricula e nome do aluno, nome do curso, e nome, créditos e carga horária da disciplina:

SELECT
    A.matricula AS Matricula_Aluno,
    A.nome AS Nome_Aluno,
    C.nome AS Nome_Curso,
    D.nome AS Nome_Disciplina,
    D.creditos AS Creditos_Disciplina,
    D.carga_horaria AS Carga_Horaria_Disciplina
FROM
    Aluno A
INNER JOIN
    Curso C ON A.id_curso = C.id
INNER JOIN
    AlunoDisciplina AD ON A.matricula = AD.matricula_aluno
INNER JOIN
    Disciplina D ON AD.id_disciplina = D.id
ORDER BY
    A.matricula, D.nome;


