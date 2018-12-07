DROP TABLE usuario;
-- Criando Tabela Usuario
CREATE TABLE usuario(
	id int not null primary key GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1), 
	login varchar(20) not null,
	senha varchar(20) not null
);

-- Inserindo usuarios
INSERT INTO usuario Values
(default,'admin', 'admin');

DROP TABLE curso;
CREATE TABLE curso(
	id int not null primary key GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
	nome varchar(200) not null,
	sigla varchar(20) not null
);

DROP TABLE aluno;
-- Criando Tabela Aluno
CREATE TABLE aluno(
	matricula int not null primary key GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
	nome varchar(200) not null,
	curso int not null,
	periodo varchar(20) not null,
        constraint fk_aluno_curso foreign key (curso) references curso (id)
);

-- Inserindo cursos
INSERT INTO curso Values
(default, 'Análise e Desenvolvimento de Sistemas', 'ADS'),
(default, 'Processos Químicos', 'PQ'),
(default, 'Comércio Exterior', 'COMEX'),
(default, 'Gestão Empresarial', 'GE');