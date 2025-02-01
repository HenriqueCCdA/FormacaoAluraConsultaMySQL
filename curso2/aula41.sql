-- *******************************************************
USE `insight_places`;

DROP procedure IF EXISTS `insight_places`.`novoAluguel_41`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `novoAluguel_41`
(vAluguel VARCHAR(10),  vClienteNome VARCHAR(15), vHospedagem VARCHAR(10), vDataInicio DATE, vDias INTEGER, vPrecoUnitariol DECIMAL(10,2))
BEGIN
	DECLARE vCliente VARCHAR(10);
	DECLARE vDataFinal DATE;
    DECLARE vNumCliente INTEGER;
    DECLARE vPrecoTotal DECIMAL(10, 2);
    DECLARE vMensagem VARCHAR(100);
    DECLARE EXIT HANDLER FOR 1452
    BEGIN
		SET vMensagem = 'Problema de chave estrangeira associado a alguma entidade da base.';
        SELECT vMensagem;
    END;
    SET vNumCliente = (SELECT COUNT(*) FROM clientes WHERE  nome = vClienteNome);
    CASE 
	WHEN vNumCliente = 0 THEN
		SET vMensagem = 'Este cliente não existe';
		SELECT vMensagem;
	WHEN vNumCliente = 1 THEN	
        SET vDataFinal = (SELECT vDataInicio + INTERVAL vDias DAY);
		SET vPrecoTotal = vDias * vPrecoUnitariol;
		SELECT cliente_id INTO vCliente FROM clientes WHERE nome = vClienteNome;
    
		INSERT INTO alugueis VALUES (vAluguel, vCliente, vHospedagem, vDataInicio, vDataFinal, vPrecoTotal);
		SET vMensagem = 'Aluguel incluido na base com sucesso';
		SELECT vMensagem;
	WHEN vNumCliente > 1 THEN	
		SET vMensagem = 'Este cliente não pode ser usado para incluir o aluguel pelo nome';
		SELECT vMensagem;
	END CASE;
END$$

DELIMITER ;
-- *******************************************************

CALL novoAluguel_41('10008', 'Rafael Peixoto', '8635', '2023-05-05', 5, 40);
