use DS330_Ex01;

INSERT INTO Marca (Nome) VALUES
('Toyota'),
('Ford'),
('Honda'),
('Chevrolet'),
('Volkswagen');

INSERT INTO Modelo (Nome, Cod_Marca) VALUES
('Corolla', 1),
('Camry', 1),
('Fiesta', 2),
('Mustang', 2),
('Civic', 3),
('Accord', 3),
('Cruze', 4),
('Malibu', 4),
('Golf', 5),
('Passat', 5);

INSERT INTO Cliente (CPF, Nome, Endereco, Telefone) VALUES
('123.456.789-01', 'João da Silva', 'Rua Principal, 123', 11111111),
('234.567.890-12', 'Maria Oliveira', 'Avenida Central, 456', 22222222),
('345.678.901-23', 'Carlos Pereira', 'Travessa da Rua, 789', 33333333),
('456.789.012-34', 'Ana Santos', 'Rua da Praça, 789', 44444444),
('567.890.123-45', 'Luiz Ferreira', 'Avenida da Colina, 555', 55555555);

INSERT INTO Veiculo (Placa, Chassi, Ano, Km, Status, Cod_Modelo) VALUES
('ABC-1234', 123456789, '2022-01-01', 1000, 'A', 1),
('DEF-5678', 234567890, '2020-01-01', 5000, 'A', 1),
('GHI-9012', 345678901, '2021-01-01', 2000, 'D', 1),
('JKL-3456', 901234567, '2020-11-01', 9000, 'A', 3),
('MNO-7890', 124567890, '2023-03-01', 200, 'A', 4),
('PQR-1234', 567801234, '2022-08-01', 3000, 'D', 5),
('STU-5678', 678912345, '2020-10-01', 6000, 'A', 5);


INSERT INTO Aluguel (Data_Aluguel, Data_Prevista, Data_Devolucao, Cod_Cliente, Cod_Veiculo) VALUES
('2023-08-01', '2023-08-10', '2023-08-09', 1, 1),
('2023-08-05', '2023-08-15', '2023-08-14', 2, 2),
('2023-08-10', '2023-08-20', NULL, 3, 3),
('2023-08-02', '2023-08-12', '2023-08-11', 4, 4),
('2023-08-15', '2023-08-25', '2023-08-24', 5, 5),
('2023-10-03', '2023-10-13', '2023-10-12', 1, 1),
('2023-09-08', '2023-09-18', '2023-09-17', 2, 2),
('2023-07-20', '2023-07-30', '2023-07-29', 3, 3),
('2023-06-15', '2023-06-25', '2023-06-24', 4, 4),
('2023-05-02', '2023-05-12', '2023-05-11', 5, 5),
('2023-04-10', '2023-04-20', '2023-04-19', 1, 6),
('2023-03-15', '2023-03-25', '2023-03-24', 2, 7),
('2023-02-20', '2023-03-02', NULL, 3, 1),
('2023-01-05', '2023-01-15', '2023-01-14', 4, 2),
('2022-12-10', '2022-12-20', '2022-12-19', 5, 3),
('2022-11-15', '2022-11-25', '2022-11-24', 1, 4),
('2022-10-20', '2022-10-30', '2022-10-29', 2, 5),
('2022-09-25', '2022-10-05', '2022-10-04', 3, 6),
('2022-08-01', '2022-08-11', '2022-08-10', 4, 7),
('2022-07-05', '2022-07-15', '2022-07-14', 5, 1),
('2022-06-10', '2022-06-20', '2022-06-19', 1, 2),
('2022-05-15', '2022-05-25', '2022-05-24', 2, 3),
('2022-04-20', '2022-04-30', '2022-04-29', 3, 4),
('2022-03-25', '2022-04-04', '2022-04-03', 4, 5),
('2022-02-01', '2022-02-11', '2022-02-10', 5, 6),
('2023-10-03', '2023-10-13', '2023-10-12', 1, 1),
('2023-09-08', '2023-09-18', '2023-09-17', 2, 2),
('2023-07-20', '2023-07-30', '2023-07-29', 3, 3),
('2023-06-15', '2023-06-25', '2023-06-24', 4, 4),
('2023-05-02', '2023-05-12', '2023-05-11', 5, 5),
('2023-04-10', '2023-04-20', '2023-04-19', 1, 6),
('2023-03-15', '2023-03-25', '2023-03-24', 2, 7),
('2023-02-20', '2023-03-02', NULL, 3, 1),
('2023-01-05', '2023-01-15', '2023-01-14', 4, 2),
('2023-01-01', '2023-01-10', '2023-01-09', 5, 3),
('2023-01-15', '2023-01-25', '2023-01-24', 1, 4),
('2023-02-10', '2023-02-20', '2023-02-19', 2, 5),
('2023-03-05', '2023-03-15', '2023-03-14', 3, 6),
('2023-03-20', '2023-03-30', '2023-03-29', 4, 7),
('2023-04-01', '2023-04-11', '2023-04-10', 5, 1),
('2023-04-15', '2023-04-25', '2023-04-24', 1, 2),
('2023-05-10', '2023-05-20', '2023-05-19', 2, 3),
('2023-06-05', '2023-06-15', '2023-06-14', 3, 4),
('2023-06-20', '2023-06-30', '2023-06-29', 4, 5),
('2023-07-01', '2023-07-11', '2023-07-10', 5, 6);

-- Inserções na tabela Pagamento, relacionando com Cliente e Aluguel
INSERT INTO Pagamento (Metodo, Valor, Status, Cod_Cliente, Cod_Aluguel) VALUES
('Cartão', 500.00, 'P', 1, 1),
('Dinheiro', 600.00, 'P', 2, 2),
('Transferência', 450.00, 'P', 3, 3),
('Cartão', 700.00, 'P', 4, 4),
('Dinheiro', 800.00, 'E', 5, 5);