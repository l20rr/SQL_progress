SELECT 
    count(*) AS total_transacoes,
    count(DISTINCT IdTransacao) ,
    count(DISTINCT IdCliente) 
FROM transacoes 
WHERE DtCriacao >= '2025-07-01' 
AND DtCriacao < '2025-08-31'
ORDER BY DtCriacao DESC
limit 10;