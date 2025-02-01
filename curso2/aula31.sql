SELECT * FROM clientes WHERE nome = 'Luana Moura';

-- *******************************************************
USE `insight_places`;

DROP procedure IF EXISTS `insight_places`.`novoAluguel_31`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `novoAluguel_31`
(vAluguel VARCHAR(10),  vClienteNome VARCHAR(15), vHospedagem VARCHAR(10), vDataInicio DATE, vDataFinal DATE, vPrecoUnitariol DECIMAL(10,2))
BEGIN
	DECLARE vCliente VARCHAR(10);
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
	SELECT cliente_id INTO vCliente FROM clientes WHERE nome = vClienteNome;
    
	INSERT INTO alugueis VALUES (vAluguel, vCliente, vHospedagem, vDataInicio, vDataFinal, vPrecoTotal);
	SET vMensagem = 'Aluguel incluido na base com sucesso';
    SELECT vMensagem;
END$$

DELIMITER ;
-- *******************************************************

CALL novoAluguel_31('10006', 'Luana Moura', '8635', '2023-03-13', '2023-03-16', 40);