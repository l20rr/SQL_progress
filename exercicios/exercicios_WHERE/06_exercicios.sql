-- Listar produtos com o nome que TERMINE com "LOVER"

SELECT IdProduto, DescNomeProduto
FROM produtos

WHERE DescNomeProduto LIKE '%Lover'
LIMIT 20;