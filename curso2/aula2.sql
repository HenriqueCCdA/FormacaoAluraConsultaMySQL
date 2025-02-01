USE `insight_places`;

DROP procedure IF EXISTS `insight_places`.`novoAluguel_21`;

DELIMITER $$

USE `insight_places`$$ 

CREATE DEFINER=`root`@`localhost` PROCEDURE `novoAluguel_21`()
BEGIN
	SELECT *;
END$$

DELIMITER ;

-- *******************************************************

USE `insight_places`;

DROP procedure IF EXISTS `insight_places`.`novoAluguel_22`;

DELIMITER $$

USE `insight_places`$$ 

CREATE DEFINER=`root`@`localhost` PROCEDURE `novoAluguel_22`()
BEGIN
	DECLARE vAluguel VARCHAR(10) DEFAULT 10001;
    DECLARE vCliente VARCHAR(10) DEFAULT 1002;
    DECLARE vHospedagem VARCHAR(10) DEFAULT 8635;
    DECLARE vDataInicio DATE DEFAULT '2023-03-01';
    DECLARE vDataFinal DATE DEFAULT '2023-03-05';
    DECLARE vPrecoTotal DECIMAL(10,2) DEFAULT 550.23;

	INSERT INTO alugueis VALUES (vAluguel, vCliente, vHospedagem, vDataInicio, vDataFinal, vPrecoTotal);
END$$

-- *******************************************************

-- *******************************************************

USE `insight_places`;

DROP procedure IF EXISTS `insight_places`.`novoAluguel_23`;

DELIMITER $$

USE `insight_places`$$ 

CREATE DEFINER=`root`@`localhost` PROCEDURE `novoAluguel_22`()
BEGIN
	DECLARE vAluguel VARCHAR(10) DEFAULT 10001;
    DECLARE vCliente VARCHAR(10) DEFAULT 1002;
    DECLARE vHospedagem VARCHAR(10) DEFAULT 8635;
    DECLARE vDataInicio DATE DEFAULT '2023-03-01';
    DECLARE vDataFinal DATE DEFAULT '2023-03-05';
    DECLARE vPrecoTotal DECIMAL(10,2) DEFAULT 550.23;

	INSERT INTO alugueis VALUES (vAluguel, vCliente, vHospedagem, vDataInicio, vDataFinal, vPrecoTotal);
END$$

-- *******************************************************
SELECT * FROM alugueis;

CALL novoAluguel_22;
