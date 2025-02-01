SELECT 
	cliente_id,
	AVG(preco_total) as preco_medio
FROM alugueis
GROUP BY cliente_id
