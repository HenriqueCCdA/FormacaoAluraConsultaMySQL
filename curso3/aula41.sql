 -- MENOS de 4 DIAS = 0%
 -- 4 a 6 DIAS = 4%
 -- 7 a 9 DIAS = 10%
 -- 10 Ou MAIS DIAS = 15%

DELIMITER $$

CREATE FUNCTION CalcularDescontoPorDias(AluguelID INT)
RETURNS INT DETERMINISTIC
BEGIN
DECLARE desconto INT;
SELECT 
	CASE
		WHEN DATEDIFF(data_fim, data_inicio) BETWEEN 4 AND 6 THEN 5
		WHEN DATEDIFF(data_fim, data_inicio) BETWEEN 7 AND 9 THEN 10
		WHEN DATEDIFF(data_fim, data_inicio) >= 10 THEN 15
		ELSE 0
	END INTO desconto
FROM alugueis
WHERE aluguel_id = AluguelID;

RETURN desconto;
END$$

DELIMITER ;

SELECT CalcularDescontoPorDias(1);
