SELECT 
	p.nome AS nome_proprietario, 
	COUNT(*) AS total_hospedagens_inativas
FROM proprietarios p
JOIN hospedagens h ON p.proprietario_id = h.proprietario_id
WHERE h.ativo = 0
GROUP BY p.nome;
