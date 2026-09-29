-- produto mais transacionado 

SELECT IdProduto,
    count(*) AS qtdePontosT
FROM  transacao_produto
GROUP BY IdProduto
ORDER BY qtdePontosT DESC
LIMIT 1; 



