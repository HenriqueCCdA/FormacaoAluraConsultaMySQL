SELECT * FROM alugueis;

SELECT
    (SELECT COUNT(*) FROM alugueis) AS alugueis,
	(SELECT COUNT(*) FROM avaliacoes) AS avaliações,
	(SELECT COUNT(*) FROM clientes) AS clientes,
	(SELECT COUNT(*) FROM enderecos) AS endereços,
	(SELECT COUNT(*) FROM hospedagens) AS hospedagens,
	(SELECT COUNT(*) FROM proprietarios) AS proprietaarios;
