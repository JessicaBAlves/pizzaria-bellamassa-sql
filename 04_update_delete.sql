USE pizzaria_bellamassa;

-- ========================================================
-- ATUALIZAÇÕES (UPDATE) - Mínimo de 3
-- ========================================================

-- 1. Atualizar o preço da Pizza Calabresa (ID 1)
UPDATE PRODUTO 
SET Preco_Atual = 50.00
WHERE ID_Produto = 1;

-- 2. Atualizar status do pedido 2 para saiu para entrega
UPDATE PEDIDO
SET Status = 'Saiu para entrega'
WHERE ID_Pedido = 2;

-- 3. Corrigir o telefone do cliente João Silva
UPDATE CLIENTE
SET Telefone = '11977776666'
WHERE ID_Cliente = 1;


-- ========================================================
-- REMOÇÕES (DELETE) - Mínimo de 3
-- ========================================================

-- Desativa a trava de segurança do MySQL (Resolve o Error Code: 1175)
SET SQL_SAFE_UPDATES = 0;

-- 1. Deletar um endereço que não está sendo usado (ID 3)
DELETE FROM ENDERECO
WHERE ID_Endereco = 3;

-- 2. Remover um item específico (Coca-Cola) do Pedido 1
DELETE FROM ITEM_PEDIDO
WHERE ID_Pedido = 1 AND ID_Produto = 3;

-- 3. Deletar uma categoria pelo nome
-- (Primeiro criamos uma categoria teste para poder apagar)
INSERT INTO CATEGORIA (Nome_Categoria) VALUES ('Categoria Teste');

-- (Agora deletamos ela usando o nome)
DELETE FROM CATEGORIA
WHERE Nome_Categoria = 'Categoria Teste';

-- Reativa a trava de segurança (Boas práticas)
SET SQL_SAFE_UPDATES = 1;