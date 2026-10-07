


-- Em 2024 quantas transações de 'Lovers' tivemos? 

SELECT 
    t1.IdTransacao,
    t2.*
FROM transacao_produto AS t1
LEFT JOIN produtos AS t2 
ON t1.IdProduto = t2.IdProduto
;

