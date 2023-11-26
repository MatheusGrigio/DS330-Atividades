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
('2023-08-15', '2023-08-25', '2023-08-24', 5, 5);

-- Inserções na tabela Pagamento, relacionando com Cliente e Aluguel
INSERT INTO Pagamento (Metodo, Valor, Status, Cod_Cliente, Cod_Aluguel) VALUES
('Cartão', 500.00, 'P', 1, 1),
('Dinheiro', 600.00, 'P', 2, 2),
('Transferência', 450.00, 'P', 3, 3),
('Cartão', 700.00, 'P', 4, 4),
('Dinheiro', 800.00, 'P', 5, 5);