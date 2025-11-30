USE pizzaria_bellamassa;

-- 1. Listar todos os clientes
SELECT * FROM CLIENTE;

-- 2. Mostrar todos os pedidos com nome do cliente
SELECT P.ID_Pedido, C.Nome, P.Data_Hora, P.Valor_Total
FROM PEDIDO P
JOIN CLIENTE C ON P.ID_Cliente = C.ID_Cliente;

-- 3. Mostrar itens de um pedido específico
SELECT I.*, PR.Nome
FROM ITEM_PEDIDO I
JOIN PRODUTO PR ON I.ID_Produto = PR.ID_Produto
WHERE I.ID_Pedido = 1;

-- 4. Produtos acima de R$ 20 ordenados por preço
SELECT * FROM PRODUTO
WHERE Preco_Atual > 20
ORDER BY Preco_Atual DESC;


-- 5. Quantos pedidos cada cliente fez (Relatório Completo)
-- O LEFT JOIN garante que até quem nunca comprou (Carlos) apareça na lista com 0
SELECT C.Nome, COUNT(P.ID_Pedido) AS Total_Pedidos
FROM CLIENTE C
LEFT JOIN PEDIDO P ON C.ID_Cliente = P.ID_Cliente
GROUP BY C.Nome
ORDER BY Total_Pedidos DESC;
