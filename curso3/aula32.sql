SELECT ROUND(AVG(nota), 2) FROM avaliacoes;

DELIMITER $$

CREATE FUNCTION MediaAvaliacoes()
RETURNS FLOAT DETERMINISTIC
BEGIN

DECLARE media FLOAT;

SELECT ROUND(AVG(nota), 2) MediasNotas 
INTO media
FROM avaliacoes;

RETURN media;
END$$

DELIMITER ;

SELECT MediaAvaliacoes();