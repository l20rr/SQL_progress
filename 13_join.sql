SELECT * 
FROM transacao_produto 

LEFT JOIN produtos 
ON  transacao_produto.IdProduto = produtos.IdProduto

LIMIT 10;
