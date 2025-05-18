-- ========================================
-- Script: Inserção de Dados - Banco E-commerce
-- Autor: [Seu Nome]
-- ========================================

-- Clientes PF e PJ
INSERT INTO Cliente VALUES (1, 'PF', 'João Silva', 'joao@email.com', '11999999999');
INSERT INTO ClientePF VALUES (1, '12345678900');

INSERT INTO Cliente VALUES (2, 'PJ', 'Empresa XPTO', 'contato@xpto.com', '1133334444');
INSERT INTO ClientePJ VALUES (2, '11222333000199', 'XPTO LTDA');

-- Endereços
INSERT INTO Endereco VALUES (1, 1, 'Rua A', '100', 'São Paulo', 'SP', '01001000');
INSERT INTO Endereco VALUES (2, 2, 'Av B', '2000', 'Rio de Janeiro', 'RJ', '20040000');

-- Fornecedores
INSERT INTO Fornecedor VALUES (1, 'Fornecedor 1', '11111111000111');
INSERT INTO Fornecedor VALUES (2, 'Fornecedor 2', '22222222000122');

-- Vendedores
INSERT INTO Vendedor VALUES (1, 'Carlos Souza', 'carlos@empresa.com');
INSERT INTO Vendedor VALUES (2, 'Ana Lima', 'ana@empresa.com');

-- Produtos
INSERT INTO Produto VALUES (1, 'Notebook', 'Notebook i7 16GB', 3500.00, 1);
INSERT INTO Produto VALUES (2, 'Mouse', 'Mouse óptico USB', 50.00, 2);

-- Estoque
INSERT INTO Estoque VALUES (1, 10, 'Depósito 1');
INSERT INTO Estoque VALUES (2, 100, 'Depósito 2');

-- Pedido
INSERT INTO Pedido VALUES (1, 1, NOW(), 'Confirmado', 1);

-- Itens do Pedido
INSERT INTO ItemPedido VALUES (1, 1, 1, 3500.00);
INSERT INTO ItemPedido VALUES (1, 2, 2, 50.00);

-- Pagamento
INSERT INTO Pagamento VALUES (1, 1, 'Cartão de Crédito', 3600.00, NOW());

-- Entrega
INSERT INTO Entrega VALUES (1, 1, 'Enviado', 'BR123456789BR', NOW());
