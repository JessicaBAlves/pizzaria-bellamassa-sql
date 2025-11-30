# 🍕 Pizzaria Bella Massa - Banco de Dados SQL

Este projeto consiste na modelagem e implementação de um banco de dados relacional para gerenciar as operações de uma pizzaria. O objetivo foi estruturar o armazenamento de dados desde o cadastro de clientes até o gerenciamento de pedidos e itens.

## 🗂 Estrutura do Projeto

O projeto foi dividido em scripts SQL sequenciais para facilitar a execução e o entendimento do fluxo de dados:

* **`01_create_tables.sql`**: Script DDL responsável pela criação do banco de dados, tabelas e definição de relacionamentos (Chaves Primárias e Estrangeiras).
* **`02_insert_data.sql`**: Script DML para popular o banco com dados fictícios (seed data) para testes de clientes, sabores de pizza e pedidos.
* **`03_select_queries.sql`**: Contém consultas (queries) variadas, desde relatórios simples até joins para analisar o faturamento e preferências dos clientes.
* **`04_update_delete.sql`**: Exemplos de manutenção de dados, como atualização de preços e remoção de registros.

## 🛠 Tecnologias Utilizadas

* **SQL** (Structured Query Language)
* **Git & GitHub** (Versionamento de código)
* **VS Code** (Editor de código)

## 📊 Modelagem dos Dados

O sistema conta com as seguintes entidades principais:
* **Clientes**: Informações de contato e endereço.
* **Pizzas**: Catálogo de sabores e preços.
* **Pedidos**: Registro das transações.
* **Itens do Pedido**: Detalhamento do que foi consumido em cada pedido.

## 🚀 Como executar

1.  Clone o repositório:
    ```bash
    git clone [https://github.com/JessicaBAlves/pizzaria-bellamassa-sql.git](https://github.com/JessicaBAlves/pizzaria-bellamassa-sql.git)
    ```
2.  Abra seu SGBD de preferência (MySQL Workbench, DBeaver, pgAdmin, etc).
3.  Execute os scripts na ordem numérica (01 ao 04).

---

## 👩‍💻 Autora

Desenvolvido por **Jéssica Alves**.

* [LinkedIn](https://www.linkedin.com/in/jéssicabalves)
* [GitHub](https://github.com/JessicaBAlves)