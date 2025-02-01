USE `insight_places`;
SELECT * FROM clientes WHERE cliente_id = '10001';

-- *******************************************************
USE `insight_places`;

DROP procedure IF EXISTS `insight_places`.`novoAluguel_25`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `novoAluguel_25`
(vAluguel VARCHAR(10),  vCliente VARCHAR(10), vHospedagem VARCHAR(10), vDataInicio DATE, vDataFinal DATE, vPrecoUnitariol DECIMAL(10,2))
BEGIN
	DECLARE vDias INTEGER;
    DECLARE vPrecoTotal DECIMAL(10, 2);
    DECLARE vMensagem VARCHAR(100);
    DECLARE EXIT HANDLER FOR 1452
    BEGIN
		SET vMensagem = 'Problema de chave estrangeira associado a alguma entidade da base.';
        SELECT vMensagem;
    END;
    SET vDias = (SELECT DATEDIFF(vDataFinal, vDataInicio));
    SET vPrecoTotal = vDias * vPrecoUnitariol;
	INSERT INTO alugueis VALUES (vAluguel, vCliente, vHospedagem, vDataInicio, vDataFinal, vPrecoTotal);
	SET vMensagem = 'Aluguel incluido na base com sucesso';
    SELECT vMensagem;
END$$

DELIMITER ;
-- *******************************************************

CALL novoAluguel_25('10006', '10001', '8635', '2023-03-13', '2023-03-16', 40);
