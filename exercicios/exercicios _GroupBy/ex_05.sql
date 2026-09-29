-- val medio de pts positivos por dia 


SELECT sum(QtdePontos) AS totalQtdePontos,
        count(DISTINCT substr(DtCriacao, 1, 10)) AS QtdDiasDistintos,
        sum(QtdePontos) / count(DISTINCT substr(DtCriacao, 1, 10)) AS valMedioPtsPositivos
FROM transacoes
WHERE QtdePontos > 0;


-- não posso usar avg pq a tab inicial nao esta em dia e sim, em transação. 
-- poderia fazer a media da soma dos pontos positivos por dia, mas ai teria que agrupar por dia e depois fazer a media.

SELECT substr(DtCriacao, 1, 10) AS Dia,
        AVG(QtdePontos) AS valMedioPtsPositivos
FROM transacoes
WHERE QtdePontos > 0
GROUP BY 1
ORDER BY 1;