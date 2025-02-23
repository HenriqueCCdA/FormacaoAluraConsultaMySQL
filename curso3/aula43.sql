CREATE TABLE resumo_aluguel(
	 aluguel_id VARCHAR(255),
     cliente_id VARCHAR(255),
     valortotal DECIMAL(10, 2),
     descontoaplicado DECIMAL(10, 2),
     valorfinal DECIMAL(10, 2),
     PRIMARY KEY (aluguel_id, cliente_id),
     FOREIGN KEY (aluguel_id) REFERENCES alugueis(aluguel_id),
     FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);