SELECT 
	TRUNCATE(AVG(nota), 2) AS media,
	tipo
FROM avaliacoes a
JOIN hospedagens h
ON h.hospedagem_id = a.hospedagem_id
GROUP BY tipo;

SELECT 
	ROUND(AVG(nota), 2) AS media,
	tipo
FROM avaliacoes a
JOIN hospedagens h
ON h.hospedagem_id = a.hospedagem_id
GROUP BY tipo;

SELECT 
	hospedagem_id, 
	nota, 
	CASE nota
		WHEN 5 THEN 'Execelente'
        WHEN 4 THEN 'Ótimo'
        WHEN 3 THEN 'Muito Bom'
        WHEN 2 THEN 'Bom'
        ELSE 'Ruim'
	END AS StatusNota
FROM avaliacoes;