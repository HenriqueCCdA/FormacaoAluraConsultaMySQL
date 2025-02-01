UPDATE hospedagens
SET ativo=1
WHERE hospedagem_id IN ('1', '10', '100');

UPDATE proprietarios
SET contato = 'daniela_120@email.com'
WHERE proprietario_id = '1009';

SELECT * FROM proprietarios WHERE proprietario_id = '1009';