SELECT *
FROM produtos
WHERE DescCategoriaProduto = 'rpg';

SELECT * 
FROM clientes
WHERE flEmail = 1 ;

SELECT * 
FROM transacoes
WHERE QtdePontos >= 500; 

SELECT *
FROM produtos
-- IN (x, y , z) é igual ao OR, vamos ler bucar DescNomeProduto x ou y ou z
WHERE DescNomeProduto IN ('Churn_10pp', 'Churn_2pp', 'Churn_5pp');

SELECT *
FROM produtos
-- % igual ao linux na busca da palavra. é o joker 
-- LIKE "look lilke", compara a string. é custoso, se vc sabe oq vai buscar, vai pelo IN
-- o MELHOR DE TODOS É O '='
WHERE DescNomeProduto LIKE '%churn%';

-- Melhor forma da query seria por categoria
SELECT *
FROM produtos
-- o MELHOR DE TODOS É O '='
WHERE DescCategoriaProduto = 'churn_model';
