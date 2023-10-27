DELIMITER ##
CREATE PROCEDURE alugar_veiculo(
    IN data_Aluguel DATE,
    IN data_Prevista DATE,
    IN data_Devolucao DATE,
    IN carteira_cliente VARCHAR(20),
    IN cod_Cliente INT,
    IN chassi VARCHAR(20)
)
BEGIN
    DECLARE id_veiculo INT;
    DECLARE id_cliente INT;
    
    SELECT Cod_veiculo INTO id_veiculo FROM Veiculo WHERE chassi = Chassi AND Status = "Disponível";
    
    IF Status NOT LIKE "Disponível" THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Veículo não disponível para aluguel na data selecionada.';
    END IF;
    
    SELECT Cod_cliente INTO id_cliente FROM Cliente WHERE CNH = carteira_cliente;
    
    IF v_cliente_id IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cliente não encontrado ou CNH incorreta.';
    END IF;
    
    INSERT INTO Aluguel (Data_Aluguel, Data_Prevista, Data_Devolucao, Cod_Cliente, Cod_Veiculo)
    VALUES (data_Aluguel, data_Prevista, data_Devolucao, id_cliente, id_veiculo);
    
    UPDATE Veiculos SET Status="Disponível" WHERE Cod_veiculo = id_veiculo;
END
DELIMITER  ;