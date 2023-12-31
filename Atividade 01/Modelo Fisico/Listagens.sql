use DS330_Ex01;

SELECT Veiculo.Placa, Veiculo.Chassi, Marca.Nome AS "Marca", Modelo.Nome AS "Modelo", Veiculo.Ano, Veiculo.Km, Veiculo.Status FROM Veiculo
INNER JOIN modelo ON veiculo.cod_modelo=modelo.cod_modelo
INNER JOIN marca ON modelo.Cod_Marca = marca.Cod_Marca;

SELECT 
	cliente.Nome, 
	cliente.CPF, 
    veiculo.Placa,
    veiculo.Chassi, 
    Marca.Nome AS "Marca", 
    Modelo.Nome AS "Modelo", 
    aluguel.Data_aluguel AS "Data início", 
    aluguel.Data_Prevista AS "Data prevista", 
    aluguel.Data_Devolucao AS "Data devolução",
    pagamento.status AS "Status pagamento"
FROM Cliente
INNER JOIN Aluguel ON Cliente.cod_cliente=Aluguel.cod_cliente
INNER JOIN Pagamento ON Aluguel.cod_aluguel=Pagamento.cod_aluguel
INNER JOIN Veiculo ON Aluguel.cod_veiculo=Veiculo.cod_veiculo
INNER JOIN modelo ON veiculo.cod_modelo=modelo.cod_modelo
INNER JOIN marca ON modelo.Cod_Marca = marca.Cod_Marca;

SELECT 
	Marca.Nome AS "Marca", 
    Modelo.Nome AS "Modelo", 
    COUNT(Veiculo.cod_veiculo) AS "Quantidade em inventário",
    COUNT(distinct if(Veiculo.status="D", veiculo.cod_veiculo, null)) AS "Quantidade disponível"
FROM Marca
INNER JOIN Modelo ON Marca.cod_marca=Modelo.cod_marca
LEFT JOIN Veiculo ON Modelo.cod_modelo=Veiculo.cod_modelo
GROUP BY Modelo.nome
ORDER BY Marca.nome;

SELECT
    YEAR(MIN(Data_Aluguel)) AS "Ano",
    MONTHNAME(MIN(Data_Aluguel)) AS "Mês",
    COUNT(*) AS "Quantidade de aluguéis"
FROM
    Aluguel
WHERE
    Data_Aluguel >= CURDATE() - INTERVAL 12 MONTH
GROUP BY
    YEAR(Data_Aluguel), MONTH(Data_Aluguel)
ORDER BY
    YEAR(Data_Aluguel) DESC, MONTH(Data_Aluguel) DESC;

SELECT 
	Cliente.Nome AS "Nome Cliente",
	Veiculo.Placa AS "Placa Veiculo"
FROM Cliente
INNER JOIN Aluguel ON Cliente.Cod_Cliente = Aluguel.Cod_Cliente
INNER JOIN Veiculo ON Aluguel.Cod_Veiculo = Veiculo.Cod_Veiculo;

SELECT *
FROM Veiculo
WHERE Km = (SELECT MIN(Km) FROM Veiculo);

SELECT 
	Cliente.Nome AS "Nome Cliente", 
	COUNT(Aluguel.Cod_Aluguel) AS Total_Alugueis
FROM Cliente
LEFT JOIN Aluguel ON Cliente.Cod_Cliente = Aluguel.Cod_Cliente
GROUP BY Cliente.Nome
ORDER BY Total_Alugueis DESC;
