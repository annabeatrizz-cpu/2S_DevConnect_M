CREATE DATABASE Loja_M;

USE Loja_M;

--padrão de nomenclatura é PascalCase com Snake
CREATE TABLE Cliente(
	ID_Cliente	INT	IDENTITY(1, 1) PRIMARY KEY,
	Nome		NVARCHAR(255)	NOT NULL
);

SELECT * FROM Cliente;

CREATE TABLE Produto(
	ID_Produto	INT	IDENTITY(1, 1) PRIMARY KEY,
	Nome		NVARCHAR(255)	NOT	NULL,
	Preco		DECIMAL(6, 2)	NOT NULL,
);

SELECT * FROM Produto;

CREATE TABLE Pedido(
	ID_Pedido		INT	IDENTITY(1, 1) PRIMARY KEY,
	Data_Horario	DATETIME2	NOT NULL,
	ID_Cliente		INT			NOT NULL,
	ID_Produto		INT			NOT NULL,

	FOREIGN KEY(ID_Cliente) REFERENCES Cliente(ID_Cliente),
	FOREIGN KEY(ID_Produto) REFERENCES Produto(ID_Produto),
);

SELECT * FROM Pedido;