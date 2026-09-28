--QUAL CLIENTE FEZ MAIS TRANSAÇÕES NO ANO DE 2024

SELECT IdCliente,
    COUNT( DISTINCT IdTransacao) AS totalTransacoes
FROM transacoes
WHERE DtCriacao >= '2024-01-01' AND DtCriacao < '2025-01-01'

--WHERE  substr(DtCriacao, 1, 4) = '2024'

GROUP BY IdCliente

ORDER BY totalTransacoes DESC
LIMIT 1

