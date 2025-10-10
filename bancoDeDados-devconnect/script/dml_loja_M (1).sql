USE Loja_M;

INSERT INTO Cliente(Nome)
VALUES
('Ana'),
('Bruno'),
('Carla'),
('Diego');

SELECT * FROM Cliente;

INSERT INTO Produto(Nome, Preco)
VALUES
('Teclado', 150.00),
('Mouse', 80.00),
('Monitor', 900.00),
('Impressora', 600.00),
('Headset', 200.00);

SELECT * FROM Produto;


INSERT INTO Pedido(Data_Horario, ID_Cliente, ID_Produto)
VALUES
('2025-10-07 06:30:00', 1, 1),	--Ana comprou um teclado
('2025-10-08 23:59:59', 2, 2),	--Bruno comprou um mouse
('2025-10-08 00:30:00', 2, 3),	--Bruno comprou um monitor
('2025-04-26 18:00:00', 3, 5);	--Carla comprou um headset

--Diego não fez nenhum pedido
--Ninguém comprou a impressora

