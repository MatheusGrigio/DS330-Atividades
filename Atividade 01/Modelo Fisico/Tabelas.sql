Drop database if exists DS330_Ex01;
create database DS330_Ex01;
use DS330_Ex01;

drop table if exists Cliente;
create table Cliente 
(
	Cod_Cliente integer not null auto_increment,
    CPF varchar(14) not null,
    Nome varchar(50) not null,
    Endereco varchar(150) not null,
    Telefone integer not null,
    primary key (Cod_Cliente)
);

drop table if exists Marca;
create table Marca 
(
	Cod_Marca integer not null auto_increment,
    Nome varchar(50) unique not null,
    primary key (Cod_Marca)
);

drop table if exists Modelo;
create table Modelo 
(
	Cod_Modelo integer not null auto_increment,
    Nome varchar(50) unique not null,
    Cod_Marca integer not null,
    primary key (Cod_Modelo),
    foreign key (Cod_Marca) references Marca(Cod_Marca)
);

drop table if exists Veiculo;
create table Veiculo
(
	Cod_Veiculo integer not null auto_increment,
    Chassi integer unique not null,
    Ano date not null,
    Km integer not null,
    Status varchar(1) not null,
    Cod_Modelo integer not null,
    primary key (Cod_Veiculo),
    foreign key (Cod_Modelo) references Modelo(Cod_Modelo),
    check (status in ("A", "D")),
    check (km >= 0)
);

drop table if exists Aluguel;
create table Aluguel
(
	Cod_Aluguel integer not null auto_increment,
    Data_Aluguel date not null,
    Data_Prevista date not null,
    Data_Devolucao date,
    Cod_Cliente integer not null,
    Cod_Veiculo integer not null,
    primary key (Cod_Aluguel),
    foreign key (Cod_Cliente) references Cliente(Cod_Cliente),
    foreign key (Cod_Veiculo) references Veiculo(Cod_Veiculo)
);

drop table if exists Pagamento;
create table Pagamento
(
	Cod_Pagamento integer not null auto_increment,
    Metodo varchar(20) not null,
    Valor real not null,
    Status varchar(1) not null,
    Cod_Cliente integer not null,
    Cod_Aluguel integer not null,
    primary key (Cod_Pagamento),
    foreign key (Cod_Cliente) references Cliente(Cod_Cliente),
    foreign key (Cod_Aluguel) references Aluguel(Cod_Aluguel)
);