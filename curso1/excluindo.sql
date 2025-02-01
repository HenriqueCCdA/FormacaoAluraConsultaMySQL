DELETE FROM avaliacoes
WHERE hospedagem_id IN ('10000', '1001');

DELETE FROM reservas
WHERE hospedagem_id IN ('10000', '1001');

DELETE FROM hospedagens
WHERE hospedagem_id IN ('10000', '1001');

SELECT * FROM hospedagens
WHERE hospedagem_id IN ('10000', '1001');

SELECT * FROM avaliacoes
WHERE hospedagem_id IN ('10000', '1001');