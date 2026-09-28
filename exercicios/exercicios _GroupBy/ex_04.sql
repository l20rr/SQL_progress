-- Quantos produtos sao rpg? 

SELECT COUNT(*)
FROM produtos
WHERE DescCategoriaProduto = 'rpg'


SELECT DescCategoriaProduto, 
    COUNT(*) AS qtdProdutos
FROM produtos
GROUP BY DescCategoriaProduto;