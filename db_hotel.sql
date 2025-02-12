create database hotel

CREATE TABLE hospede (
     id SERIAL PRIMARY KEY,
     nome VARCHAR(100) NOT NULL,
     email VARCHAR(100) UNIQUE NOT NULL,
  	 
);

insert into hospede (nome, email) values 
('Dario Silva', 'dariosilva@gmail.com'),
('Julia Vegas', 'juliavegas@gmail.com'),
('Rebeca Santos', 'rebecasantos@gmail.com'),
('Maria Oliveira', 'mariaoliveira@gmail.com'),
('Carla Martins', 'carlamartins@gmail.com'),
('Roberta Campos', 'robertacampos@gmail.com')