git commit -m "primeiro commit"git add .USE pizzaria_bellamassa;

-- Atualizar o preço de um produto
UPDATE PRODUTO 
SET Preco_Atual = 50.00
WHERE ID_Produto = 1;

-- Atualizar status do pedido
UPDATE PEDIDO
SET Status = 'Saiu para entrega'
WHERE ID_Pedido = 2;

-- Deletar um endereço (cuidado, precisa remover dependências antes)
DELETE FROM ENDERECO
WHERE ID_Endereco = 3;
