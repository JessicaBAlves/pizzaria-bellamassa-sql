DROP DATABASE IF EXISTS pizzaria_bellamassa;
CREATE DATABASE pizzaria_bellamassa;
USE pizzaria_bellamassa;

-- ============================
-- TABELA: CLIENTE
-- ============================
CREATE TABLE CLIENTE (
    ID_Cliente INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Telefone VARCHAR(20),
    Data_Cadastro DATE
);

-- ============================
-- TABELA: ENDERECO
-- ============================
CREATE TABLE ENDERECO (
    ID_Endereco INT AUTO_INCREMENT PRIMARY KEY,
    ID_Cliente INT NOT NULL,
    Logradouro VARCHAR(100),
    Numero VARCHAR(10),
    Bairro VARCHAR(50),
    Complemento VARCHAR(50),
    CEP VARCHAR(15),
    FOREIGN KEY (ID_Cliente) REFERENCES CLIENTE(ID_Cliente)
);

-- ============================
-- TABELA: FUNCIONARIO
-- ============================
CREATE TABLE FUNCIONARIO (
    ID_Funcionario INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Cargo VARCHAR(50)
);

-- ============================
-- TABELA: CATEGORIA
-- ============================
CREATE TABLE CATEGORIA (
    ID_Categoria INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Categoria VARCHAR(50) NOT NULL
);

-- ============================
-- TABELA: PRODUTO
-- ============================
CREATE TABLE PRODUTO (
    ID_Produto INT AUTO_INCREMENT PRIMARY KEY,
    ID_Categoria INT NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Descricao VARCHAR(255),
    Preco_Atual DECIMAL(10,2) NOT NULL,
    Tamanho VARCHAR(15),
    FOREIGN KEY (ID_Categoria) REFERENCES CATEGORIA(ID_Categoria)
);

-- ============================
-- TABELA: PEDIDO
-- ============================
CREATE TABLE PEDIDO (
    ID_Pedido INT AUTO_INCREMENT PRIMARY KEY,
    ID_Cliente INT NOT NULL,
    ID_Endereco INT NOT NULL,
    ID_Funcionario INT NOT NULL,
    Data_Hora DATETIME,
    Status VARCHAR(20),
    Valor_Total DECIMAL(10,2),
    FOREIGN KEY (ID_Cliente) REFERENCES CLIENTE(ID_Cliente),
    FOREIGN KEY (ID_Endereco) REFERENCES ENDERECO(ID_Endereco),
    FOREIGN KEY (ID_Funcionario) REFERENCES FUNCIONARIO(ID_Funcionario)
);

-- ============================
-- TABELA: ITEM_PEDIDO
-- ============================
CREATE TABLE ITEM_PEDIDO (
    ID_Pedido INT NOT NULL,
    ID_Produto INT NOT NULL,
    Quantidade INT,
    Preco_Unitario_Momento DECIMAL(10,2),
    Observacao VARCHAR(255),
    PRIMARY KEY (ID_Pedido, ID_Produto),
    FOREIGN KEY (ID_Pedido) REFERENCES PEDIDO(ID_Pedido),
    FOREIGN KEY (ID_Produto) REFERENCES PRODUTO(ID_Produto)
);
