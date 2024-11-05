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



