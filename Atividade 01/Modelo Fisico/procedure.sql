use DS330_Ex01;

DELIMITER ##
CREATE PROCEDURE ALUGAR_VEICULO (
    IN DT_ALUGUEL DATE,
    IN DT_PREVISTA DATE,
    IN COD_CLI INT,
    IN COD_VEI INT
)
BEGIN
    DECLARE estado VARCHAR(20);
    DECLARE quant_cli INT;
    
    SELECT Status INTO estado FROM Veiculo WHERE Cod_Veiculo = COD_VEI;
    
    IF estado NOT IN "D" THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Veículo não disponível para aluguel na data selecionada.';
    END IF;
    
    SELECT COUNT(*) INTO quant_cli FROM Cliente WHERE Cod_Cliente = COD_CLI;
    
    IF quant_cli < 1 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cliente não encontrado.';
    END IF;
    
    IF DT_ALUGUEL < NOW() THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Data do aluguel não pode ser no passado.';
	END IF;
    
    IF DT_PREVISTA <= DT_ALUGUEL THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Data prevista da devolução precisa ser depois da data de aluguel.';
	END IF;
    
    INSERT INTO Aluguel (Data_Aluguel, Data_Prevista, Cod_Cliente, Cod_Veiculo)
    VALUES (DT_ALUGUEL, DT_PREVISTA, COD_CLI, COD_VEI);
    
    UPDATE VEICULO SET Status="A" WHERE Cod_veiculo = COD_VEI;
END
DELIMITER  ;

CALL ALUGAR_VEICULO('2023-11-01', '2023-11-09', 1, 6);