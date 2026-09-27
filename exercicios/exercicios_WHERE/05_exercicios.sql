-- Listar produtos com o nome que comece com "venda de"

SELECT IdProduto, DescNomeProduto
FROM produtos

WHERE DescNomeProduto LIKE 'venda de%'
LIMIT 20;