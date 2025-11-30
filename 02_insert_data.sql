USE pizzaria_bellamassa;

-- CLIENTES
INSERT INTO CLIENTE (Nome, Telefone, Data_Cadastro)
VALUES 
('João Silva', '11987654321', '2024-01-10'),
('Maria Souza', '11999998888', '2024-02-15'),
('Carlos Alberto', '11912345678', '2024-03-01');

-- ENDERECOS
INSERT INTO ENDERECO (ID_Cliente, Logradouro, Numero, Bairro, Complemento, CEP)
VALUES
(1, 'Rua das Flores', '123', 'Centro', 'Apto 101', '01000-000'),
(2, 'Av. Paulista', '1500', 'Bela Vista', NULL, '01310-200'),
(3, 'Rua A', '50', 'Jardim B', NULL, '04567-000');

-- FUNCIONARIOS
INSERT INTO FUNCIONARIO (Nome, Cargo)
VALUES
('Pedro Oliveira', 'Entregador'),
('Ana Lima', 'Atendente'),
('Roberto Santos', 'Pizzaiolo');

-- CATEGORIAS
INSERT INTO CATEGORIA (Nome_Categoria)
VALUES 
('Pizzas Salgadas'),
('Pizzas Doces'),
('Bebidas');

-- PRODUTOS
INSERT INTO PRODUTO (ID_Categoria, Nome, Descricao, Preco_Atual, Tamanho)
VALUES
(1, 'Pizza Calabresa', 'Calabresa com cebola', 45.00, 'Grande'),
(1, 'Pizza Portuguesa', 'Presunto, ovos, milho e ervilha', 48.00, 'Grande'),
(3, 'Coca-Cola 2L', 'Refrigerante', 12.00, NULL);

-- PEDIDOS
INSERT INTO PEDIDO (ID_Cliente, ID_Endereco, ID_Funcionario, Data_Hora, Status, Valor_Total)
VALUES
(1, 1, 1, '2024-03-15 19:30:00', 'Entregue', 57.00),
(2, 2, 1, '2024-03-16 20:10:00', 'Entregue', 45.00);

-- ITENS DO PEDIDO
INSERT INTO ITEM_PEDIDO (ID_Pedido, ID_Produto, Quantidade, Preco_Unitario_Momento, Observacao)
VALUES
(1, 1, 1, 45.00, 'Sem cebola'),
(1, 3, 1, 12.00, NULL),
(2, 2, 1, 48.00, NULL);
