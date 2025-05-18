-- Quantos pedidos foram feitos por cada cliente?
SELECT c.nome, COUNT(p.id_pedido) AS total_pedidos
FROM Cliente c
JOIN Pedido p ON c.id_cliente = p.id_cliente
GROUP BY c.nome;

-- ... (outras consultas SQL)
