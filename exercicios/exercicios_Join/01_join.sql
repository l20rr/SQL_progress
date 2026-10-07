-- QUAL CATEGORIA TEM MAIS PRODUTOS VENDIDOS ?

SELECT 
    t2.DescCategoriaProduto,
    COUNT(distinct t1.IdTransacao) AS TotalTransacoes
FROM transacao_produto AS t1

LEFT JOIN produtos AS t2
ON  t1.IdProduto = t2.IdProduto
GROUP BY t2.DescCategoriaProduto;


SELECT 
    t2.DescCategoriaProduto,
    COUNT(distinct t1.IdTransacao) AS TotalTransacoes

FROM produtos as t2
LEFT JOIN transacao_produto AS t1
ON  t1.IdProduto = t2.IdProduto
GROUP BY t2.DescCategoriaProduto;
ORDER BY TotalTransacoes DESC
