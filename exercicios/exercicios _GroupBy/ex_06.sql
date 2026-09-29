-- qual dia da semama tem mais pedidos em 2025? 

SELECT 
        strftime('%w', substr(DtCriacao, 1, 19)) AS DiaSemana,
        count(DISTINCT IdTransacao) AS QtdTransacao
FROM transacoes
WHERE substr(DtCriacao, 1, 4) = '2025'

GROUP BY 1
ORDER BY QtdTransacao DESC
LIMIT 1;