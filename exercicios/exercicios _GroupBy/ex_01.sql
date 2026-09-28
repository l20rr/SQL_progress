--QTD de clinetes com email cadastrados 

SELECT flEmail,
SUM(flEmail) AS qtdEmailCadastrados  -- 410 
FROM clientes
-- COUNT(flEmail) AS qtdEmailCadastrados 410
-- WHERE flEmail = 1 (SE USAR O COUNT)
GROUP BY flEmail    