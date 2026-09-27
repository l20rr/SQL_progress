-- Todas as transaçoes add uma nova coluna para "alto", "medio", " baixo": <10 ; <500 ; >=500

SELECT IdTransacao,QtdePontos,
        CASE
            WHEN QtdePontos < 10 THEN 'baixo'
            WHEN QtdePontos < 500 THEN 'medio'
            ELSE 'alto'
        END AS FlQtdePontos
FROM transacoes

ORDER BY QtdePontos DESC;
