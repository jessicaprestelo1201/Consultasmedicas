CREATE DATABASE gestao;
\c gestao



Criação das tabelas:

CREATE TABLE Pacientes (
    paciente_id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    telefone VARCHAR(15)
);

CREATE TABLE Medicos (
    medico_id INT PRIMARY KEY,
     nome VARCHAR(100) NOT NULL,
     especialidade VARCHAR(50) NOT NULL,
     telefone VARCHAR(15)
);

CREATE TABLE Consultas (
    consulta_id INT PRIMARY KEY,
    paciente_id INT,
    medico_id INT,
    data_consulta DATE NOT NULL,
    FOREIGN KEY (paciente_id) REFERENCES Pacientes(paciente_id),
    FOREIGN KEY (medico_id) REFERENCES Medicos(medico_id)
);



Insert's:

Pacientes:

INSERT INTO Pacientes (paciente_id, nome, data_nascimento, telefone) VALUES
(1,'Gisele Prestelo', '1985-04-20', '11987654321'),
(2,'Givanildo Jesus', '1990-01-15', '11912345678'),
(3,'Laurinda Cruz', '1978-10-05', '11987651234');

Medicos:

INSERT INTO Medicos (medico_id,nome, especialidade, telefone) VALUES
(1,'Dr. Patricia Alves', 'Cardiologia', '11911223344'),
(2,'Dra. Fernanda souza', 'Pediatria', '11922334455'),
(3,'Dr. Durvalina Eloi', 'Ortopedia', '11933445566');

Consultas:

INSERT INTO Consultas (consulta_id, paciente_id, medico_id, data_consulta) VALUES
(1,1, 1, '2024-10-20'),
(2,2, 1, '2024-10-22'),
(3,1, 2, '2024-11-01');










