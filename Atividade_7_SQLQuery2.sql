
-- Atividade 7 

--Exercicio 1
CREATE TABLE Professores (
	Id INT IDENTITY (1,1) PRIMARY KEY,
	Nome VARCHAR (50),
	Disciplina VARCHAR (15)
);
--Exercicio 2
INSERT INTO Professores (Nome,Disciplina) VALUES ('Ana Oliveira', 'Português');

--Exercicio 3
UPDATE Professores
SET Nome = 'Ana Silvia'
Where Id = 1;

--Exercicio 4
INSERT INTO Professores (Nome, Disciplina) VALUES ('Carlos Pereira', 'Matemática');
INSERT INTO Professores (Nome, Disciplina) VALUES ('Mariana Silva', 'História');
INSERT INTO Professores (Nome, Disciplina) VALUES ('Pedro Almeida', 'Geografia');
INSERT INTO Professores (Nome, Disciplina) VALUES ('Sofia Costa', 'Ciências');
INSERT INTO Professores (Nome, Disciplina) VALUES ('Lucas Rodrigues', 'Física');
INSERT INTO Professores (Nome, Disciplina) VALUES ('Isabela Santos', 'Química');
INSERT INTO Professores (Nome, Disciplina) VALUES ('Gabriel Oliveira', 'Inglês');
INSERT INTO Professores (Nome, Disciplina) VALUES ('Beatriz Souza', 'Artes');
INSERT INTO Professores (Nome, Disciplina) VALUES ('Rafael Lima', 'Educação Física');
INSERT INTO Professores (Nome, Disciplina) VALUES ('Juliana Pereira', 'Filosofia');

--Exercicio 5
DELETE FROM Professores
WHERE Id = 2;

--Exercicio 6
CREATE TABLE Turmas (
    Id INT IDENTITY (1,1) PRIMARY KEY,
    Nome VARCHAR(50),
    ProfessorResponsavel INT,
	Constraint FK_Turmas FOREIGN KEY(ProfessorResponsavel) References Turmas (Id)
);
--Exercicio 7
INSERT INTO Turmas (Nome, ProfessorResponsavel)
VALUES ('9A', 1);

--Exercicio 8
INSERT INTO Turmas (Nome, ProfessorResponsavel) VALUES ('9A',1);
INSERT INTO Turmas (Nome, ProfessorResponsavel) VALUES ('1B',3);
INSERT INTO Turmas (Nome, ProfessorResponsavel) VALUES ('2C',4);
INSERT INTO Turmas (Nome, ProfessorResponsavel) VALUES ('10A',5);
INSERT INTO Turmas (Nome, ProfessorResponsavel) VALUES ('8A',6);
INSERT INTO Turmas (Nome, ProfessorResponsavel) VALUES ('9A',7);
INSERT INTO Turmas (Nome, ProfessorResponsavel) VALUES ('1B',8);
INSERT INTO Turmas (Nome, ProfessorResponsavel) VALUES ('2C',9);
INSERT INTO Turmas (Nome, ProfessorResponsavel) VALUES ('10A',10);
INSERT INTO Turmas (Nome, ProfessorResponsavel) VALUES ('8A', 11);

--Exercicio 9 
CREATE TABLE Alunos (
    Id INT IDENTITY (1,1) PRIMARY KEY,
    Nome VARCHAR(50),
    DataNascimento date,
	TurmasId INT,
	Constraint FK_TurmasId FOREIGN KEY(TurmasId) References Turmas
);
--Exercicio 10
INSERT INTO Alunos( Nome, DataNascimento,TurmasId) VALUES ('Maria Souza', '2005-10-15', 1 );

--Exercicio 11
UPDATE Alunos
SET Nome = 'Maria da Silvia'
Where Id = 1;

--Exercicio 12
INSERT INTO Alunos (Nome, DataNascimento, TurmasId)VALUES('João Pedro', '2006-03-22', 2);
INSERT INTO Alunos (Nome, DataNascimento, TurmasId)VALUES('Ana Clara', '2007-07-10', 3);
INSERT INTO Alunos (Nome, DataNascimento, TurmasId)VALUES('Lucas Silva', '2005-11-05', 1);
INSERT INTO Alunos (Nome, DataNascimento, TurmasId)VALUES('Mariana Oliveira', '2008-01-20', 4);
INSERT INTO Alunos (Nome, DataNascimento, TurmasId)VALUES('Gabriel Santos', '2006-05-18', 2);
INSERT INTO Alunos (Nome, DataNascimento, TurmasId)VALUES('Beatriz Costa', '2007-09-01', 3);
INSERT INTO Alunos (Nome, DataNascimento, TurmasId)VALUES('Rafael Almeida', '2005-12-25', 1);
INSERT INTO Alunos (Nome, DataNascimento, TurmasId)VALUES('Juliana Pereira', '2008-02-14', 4);
INSERT INTO Alunos (Nome, DataNascimento, TurmasId)VALUES('Felipe Rocha', '2006-06-08', 2);
INSERT INTO Alunos (Nome, DataNascimento, TurmasId)VALUES('Isabela Souza', '2007-10-03', 3);

--Exercicio 13
DELETE FROM Alunos
WHERE Id = 2;

--Exercicio 14
CREATE TABLE Notas (
    Id INT IDENTITY (1,1) PRIMARY KEY,
    AlunoId INT,
    Disciplina VARCHAR(15),
    Nota DECIMAL(5, 2),
    FOREIGN KEY (AlunoId) REFERENCES Alunos(Id)
);

--Exercicio 15
INSERT INTO Notas (Id, AlunoId, Disciplina, Nota)
VALUES (1, 1, 'Matemática', 8.5);

--Exercicio 16
UPDATE Notas
SET Nota = 9.0
WHERE AlunoId = 1 AND Disciplina = 'Matemática';

--Exercicio 17

INSERT INTO Notas (AlunoId, Disciplina, Nota) VALUES (3, 'História', 7.8);
INSERT INTO Notas (AlunoId, Disciplina, Nota) VALUES (5, 'Geografia', 9.2);
INSERT INTO Notas (AlunoId, Disciplina, Nota) VALUES (2, 'Português', 6.5);
INSERT INTO Notas (AlunoId, Disciplina, Nota) VALUES (4, 'Ciências', 8.9);
INSERT INTO Notas (AlunoId, Disciplina, Nota) VALUES (6, 'Física', 7.0);
INSERT INTO Notas (AlunoId, Disciplina, Nota) VALUES (8, 'Química', 8.1);
INSERT INTO Notas (AlunoId, Disciplina, Nota) VALUES (7, 'Inglês', 9.5);
INSERT INTO Notas (AlunoId, Disciplina, Nota) VALUES (9, 'Artes', 7.2);
INSERT INTO Notas (AlunoId, Disciplina, Nota) VALUES (10, 'Educação Física', 8.6);
INSERT INTO Notas (AlunoId, Disciplina, Nota) VALUES (1, 'Português', 6.0);

--Exercicio 18

DELETE FROM Notas
WHERE AlunoId = 1 AND Disciplina = 'Matemática';

--Exercicio 19
CREATE TABLE Matriculas (
    Id INT PRIMARY KEY,
    AlunoId INT,
    TurmaId INT,
    DataMatricula DATE,
    FOREIGN KEY (AlunoId) REFERENCES Alunos(Id),
    FOREIGN KEY (TurmaId) REFERENCES Turmas(Id)
);
--Exercicio 20

INSERT INTO Matriculas (Id, AlunoId, TurmaId, DataMatricula)
VALUES (1, 1, 1, '2022-02-15');

--Exercicio 21
INSERT INTO Matriculas (Id, AlunoId, TurmaId, DataMatricula) VALUES (12, 1, 1, '2022-03-01');
INSERT INTO Matriculas (Id, AlunoId, TurmaId, DataMatricula) VALUES (3, 3, 2, '2022-02-20');
INSERT INTO Matriculas (Id, AlunoId, TurmaId, DataMatricula) VALUES (4, 4, 3, '2022-03-10');
INSERT INTO Matriculas (Id, AlunoId, TurmaId, DataMatricula) VALUES (5, 5, 1, '2022-03-15');
INSERT INTO Matriculas (Id, AlunoId, TurmaId, DataMatricula) VALUES (6, 6, 2, '2022-02-25');
INSERT INTO Matriculas (Id, AlunoId, TurmaId, DataMatricula) VALUES (7, 7, 3, '2022-03-05');
INSERT INTO Matriculas (Id, AlunoId, TurmaId, DataMatricula) VALUES (8, 8, 1, '2022-03-20');
INSERT INTO Matriculas (Id, AlunoId, TurmaId, DataMatricula) VALUES (9, 9, 2, '2022-03-01');
INSERT INTO Matriculas (Id, AlunoId, TurmaId, DataMatricula) VALUES (10, 10, 3,'2022-03-12');
INSERT INTO Matriculas (Id, AlunoId, TurmaId, DataMatricula) VALUES (11, 1, 2, '2022-03-25');


