SELECT * FROM clientes;

SELECT CONCAT(nome, ' O email é: ', contato) FROM clientes;

SELECT CONCAT(TRIM(nome), ' O email é: ', contato) AS NomeContato FROM clientes;

SELECT
	TRIM(nome) AS Nome,
	CONCAT(SUBSTRING(cpf, 1, 3), '.', SUBSTRING(cpf, 4, 3), '.', SUBSTRING(cpf, 7, 3), '-',  SUBSTRING(cpf, 10, 2))  AS CPF_Mascarado
FROM 
	clientes;