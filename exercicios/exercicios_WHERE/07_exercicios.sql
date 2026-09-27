-- Listar produtos que são 'chapeu'

SELECT IdProduto, DescCategoriaProduto
FROM produtos
WHERE DescCategoriaProduto = 'chapeu';

-- ou WHERE DescProduto LIKE '%chapeu%', LIKE nao é keysensitive, mas = é keysensitive