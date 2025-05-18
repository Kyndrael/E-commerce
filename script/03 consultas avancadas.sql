-- ========================================
-- Script: Consultas SQL Avançadas - Banco E-commerce
-- Autor: [Seu Nome]
-- ========================================

-- 1. Quantos pedidos foram feitos por cada cliente?
SELECT c.nome, COUNT(p.id_pedido) AS total_pedidos
FROM Cliente c
JOIN Pedido p ON c.id_cliente = p.id_cliente
GROUP BY c.nome;

-- 2. Algum vendedor também é fornecedor? (com base em nome)
SELECT v.nome AS vendedor_nome
FROM Vendedor v
JOIN Fornecedor f ON v.nome = f.nome;

-- 3. Relação de produtos com seus fornecedores e respectivos estoques
SELECT p.nome AS produto, f.nome AS fornecedor, e.quantidade AS estoque
FROM Produto p
JOIN Fornecedor f ON p.id_fornecedor = f.id_fornecedor
JOIN Estoque e ON p.id_produto = e.id_produto;

-- 4. Relação de nomes dos fornecedores e nomes dos produtos
SELECT f.nome AS fornecedor, p.nome AS produto
FROM Fornecedor f
JOIN Produto p ON f.id_fornecedor = p.id_fornecedor;

-- 5. Total gasto por cliente (atributo derivado)
SELECT c.nome, SUM(ip.quantidade * ip.preco_unitario) AS total_gasto
FROM Cliente c
JOIN Pedido p ON c.id_cliente = p.id_cliente
JOIN ItemPedido ip ON p.id_pedido = ip.id_pedido
GROUP BY c.nome
ORDER BY total_gasto DESC;

-- 6. Produtos com estoque abaixo de 20 unidades
SELECT p.nome, e.quantidade
FROM Produto p
JOIN Estoque e ON p.id_produto = e.id_produto
WHERE e.quantidade < 20;

-- 7. Pedidos com valor total acima de R$1000
SELECT p.id_pedido, SUM(ip.quantidade * ip.preco_unitario) AS valor_total
FROM Pedido p
JOIN ItemPedido ip ON p.id_pedido = ip.id_pedido
GROUP BY p.id_pedido
HAVING valor_total > 1000;

-- 8. Clientes PF e PJ com seus respectivos documentos
SELECT c.nome, c.tipo_cliente, pf.cpf
FROM Cliente c
JOIN ClientePF pf ON c.id_cliente = pf.id_cliente
UNION
SELECT c.nome, c.tipo_cliente, pj.cnpj
FROM Cliente c
JOIN ClientePJ pj ON c.id_cliente = pj.id_cliente;

-- 9. Pedidos com status e código de rastreamento da entrega
SELECT p.id_pedido, p.status, e.status_entrega, e.codigo_rastreio
FROM Pedido p
JOIN Entrega e ON p.id_pedido = e.id_pedido;

-- 10. Lista de produtos vendidos em cada pedido
SELECT p.id_pedido, pr.nome AS produto, ip.quantidade, ip.preco_unitario
FROM Pedido p
JOIN ItemPedido ip ON p.id_pedido = ip.id_pedido
JOIN Produto pr ON ip.id_produto = pr.id_produto
ORDER BY p.id_pedido;
