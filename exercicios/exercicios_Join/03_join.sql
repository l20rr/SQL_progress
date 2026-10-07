-- qual mes teve mais lista de presença assinada ? 

SELECT SUBSTR(t1.DtCriacao, 1, 7) AS Mes, COUNT(*) AS Total,t3.DescNomeProduto
FROM transacoes AS t1
LEFT JOIN transacao_produto AS t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos AS t3
ON t2.IdProduto = t3.IdProduto

where t3.DescNomeProduto = 'Lista de presença'
GROUP BY SUBSTR(t1.DtCriacao, 1, 7)
ORDER BY Total DESC
LIMIT 10
;