USE Loja_M;

SELECT * FROM Pedido;

--TRAGA OU EXIBA OS REGISTROS DOS PEDIDOS
--PRECISA TER O NOME DO CLIENTE, O NOME DO PRODUTO E A DATA E HORA DO PEDIDO
SELECT 
	FORMAT (Data_Horario, 'dd-MM-yyyy hh:mm:ss') AS Data_Horario,
	C.Nome	AS Nome_Cliente,
	PR.Nome AS Nome_Produto
FROM Pedido
INNER JOIN Cliente C	ON Pedido.ID_Cliente = C.ID_Cliente
INNER JOIN Produto PR	ON Pedido.ID_Produto = PR.ID_Produto
WHERE MONTH(Data_Horario) = '10';
--WHERE DAY(Data_Horario) = '10';
--por a data e hora no formato dd-mm-aaaa hh:mm:ss
--exiba um registro de uma data especifica - filtrar por data
--exiba um registro de um mes especifico - filtrar por mes da data



--EXIBA TODOS OS CLIENTES QUE NÃO FIZERAM PEDIDOS
--Nome do cliente e data do pedido

SELECT 
	C.Nome,
	PE.Data_Horario
FROM Cliente C --tabela esquerda
LEFT JOIN Pedido PE ON C.ID_Cliente = PE.ID_Cliente;

--EXIBA SOMENTE CLIENTES QUE NÃO FIZERAM PEDIDO - DICA: PRECISA VERIFICAR SE É NULL
SELECT 
	C.Nome,
	PE.Data_Horario
FROM Cliente C --tabela esquerda
LEFT JOIN Pedido PE ON C.ID_Cliente = PE.ID_Cliente
WHERE PE.ID_Cliente IS NULL;


--EXIBA TODOS OS PRODUTOS QUE ESTÃO OU NAO ATRELADOS A PEDIDOS
--Nome do produto e a data e hora do pedido
SELECT 
	PE.Data_Horario,
	PR.Nome
FROM Pedido PE
RIGHT JOIN Produto PR ON PE.ID_Produto = PR.ID_Produto



--LISTE TODOS OS REGISTRO DE PEDIDOS QUE SÃO DO DIA OU DATA 07/08/2025 ATÉ 08/08/2025
--DICA: ENTRE AS DATAS
--IDENTIFIQUE SE É UM INNER,LEFT OU RIGHT
--OU SEJA OUTRO SELECT

SELECT
	C.Nome	AS  NomeCliente,
	PR.Nome AS NomeProduto

FROM Pedido
INNER JOIN Cliente C ON Pedido.ID_Cliente = C.ID_Cliente
INNER JOIN Produto PR ON Pedido.ID_Produto = PR.ID_Produto
WHERE Data_Horario BETWEEN '2025/10/07' AND '2025/10/08';

SELECT
	PE.Data_Horario,
	PR.Nome
FROM Pedido PE
INNER JOIN Produto PR ON PE.ID_Pedido = PR.ID_Produto
WHERE Data_Horario >= '2025-10-07' AND Data_Horario < '2025-10-08';

--Mostre todos os clientes, produtos e pedidos mesmo que nao se correspondam
SELECT 
     C.Nome AS 'Nome do Cliente',
	 PR.Nome AS 'Nome do Produto',
	 PR.Preco,
	FORMAT(PE.Data_Horario, 'dd-mm-yyyy hh:mm:ss')
FROM Cliente C
FULL JOIN Pedido   PE ON PE.ID_Cliente = C.ID_Cliente
FULL JOIN Produto  PR ON PR.ID_Produto = PE.ID_Produto
