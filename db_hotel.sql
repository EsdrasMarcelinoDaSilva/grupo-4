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

select * from hospede

select nome, id from hospede where nome like '%Roberto%';

CREATE TABLE reserva (
   id SERIAL PRIMARY KEY,
   hospede_id INT NOT NULL,
   data_reserva TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   FOREIGN KEY (hospede_id) REFERENCES hospede(id) ON DELETE CASCADE
);

INSERT INTO reserva (hospede_id, data_reserva) VALUES
(3, '2025-02-10 12:30:00'),
(4, '2025-02-10 13:30:00'),
(5, '2025-02-11 14:30:00'),
(6, '2025-02-12 15:30:00'),
(7, '2025-02-13 16:30:00'),
(8, '2025-02-14 17:30:00')
(9, '2025-02-30' '20:30:00')

select * from reserva

CREATE TABLE quarto (
    id SERIAL PRIMARY KEY,
    numero VARCHAR(10) UNIQUE NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    preco_diaria DECIMAL(10,2) NOT NULL
);

INSERT INTO quarto (numero, tipo, preco_diaria) VALUES
('101', 'Solteiro', 120.50),
('102', 'Duplo', 200.00),
('103', 'Casal', 250.75),
('104', 'Solteiro', 110.00),
('105', 'Duplo', 180.00),
('106', 'Casal', 260.50),
('107', 'Solteiro', 130.00),
('108', 'Duplo', 220.00)

select * from quarto