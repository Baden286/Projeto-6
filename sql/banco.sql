-- Criando Tabela Usuario
CREATE TABLE usuario(
	id int not null primary key GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1), 
	login varchar(20) not null,
	senha varchar(20) not null
);

-- Inserindo usuario
INSERT INTO usuario Values
(default,'admin', 'admin');

-- Criando Tabela Aluno
CREATE TABLE aluno(
	matricula int not null primary key GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
	nome varchar(200) not null,
	curso varchar(20) not null,
	periodo varchar(20) not null
);