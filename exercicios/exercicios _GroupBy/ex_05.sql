-- val medio de pts positivos pro dia 

SELECT QtdePontos, 
    AVG(QtdePontos) AS valMedioPtsPositivos
FROM transacoes
WHERE QtdePontos > 0
GROUP BY QtdePontos;