-- Em 2024 quantas transações de 'lovers' tivemos? 

SELECT t3.DescCategoriaProduto, COUNT(DISTINCT t1.IdTransacao) AS TotalTransacoes
FROM transacoes AS t1


LEFT JOIN transacao_produto AS t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos AS t3
ON t2.IdProduto = t3.IdProduto

where DtCriacao between '2024-01-01' and '2024-12-31'
--and t3.DescCategoriaProduto = 'lovers'
GROUP BY t3.DescCategoriaProduto
HAVING TotalTransacoes < 1000
ORDER BY TotalTransacoes DESC
;

