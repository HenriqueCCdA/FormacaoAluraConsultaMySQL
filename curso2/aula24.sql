SELECT DATEDIFF('2023-04-03', '2023-04-01') AS diferenca_dias

-- *******************************************************
USE `insight_places`;

DROP procedure IF EXISTS `insight_places`.`novoAluguel_24`;

DELIMITER $$

USE `insight_places`$$ 

CREATE DEFINER=`root`@`localhost` PROCEDURE `novoAluguel_24`
(vAluguel VARCHAR(10),  vCliente VARCHAR(10), vHospedagem VARCHAR(10), vDataInicio DATE, vDataFinal DATE, vPrecoUnitariol DECIMAL(10,2))
BEGIN
	DECLARE vDias INTEGER;
    DECLARE vPrecoTotal DECIMAL(10, 2);
    SET vDias = (SELECT DATEDIFF(vDataFinal, vDataInicio));
    SET vPrecoTotal = vDias * vPrecoUnitariol;
	INSERT INTO alugueis VALUES (vAluguel, vCliente, vHospedagem, vDataInicio, vDataFinal, vPrecoTotal);
END$$

DELIMITER ;
-- *******************************************************

CALL novoAluguel_24('10004', '1004', '8635', '2023-03-13', '2023-03-16', 40);

SELECT * FROM alugueis;