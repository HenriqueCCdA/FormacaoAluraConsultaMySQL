SELECT * FROM alugueis;

SELECT * FROM avaliacoes;

SELECT AVG(nota) FROM avaliacoes;

SELECT * FROM hospedagens;

SELECT 
	AVG(a.nota) AS media,
	h.tipo
FROM avaliacoes a
JOIN hospedagens h
on a.hospedagem_id = h.hospedagem_id
group by h.tipo;

SELECT SUM(preco_total), MAX(preco_total), MIN(preco_total) FROM alugueis;

SELECT
	h.tipo,
	SUM(preco_total) AS ValorTotal, 
	MAX(preco_total) AS MaiorValor, 
    MIN(preco_total) AS MenorValor
FROM alugueis a
JOIN hospedagens h
ON h.hospedagem_id = a.hospedagem_id
GROUP BY tipo;
