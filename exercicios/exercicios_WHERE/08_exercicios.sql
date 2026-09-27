-- Lista de transicoes com o produi "Resgatar Ponei" 

SELECT *
--FROM produtos

--WHERE DescNomeProduto LIKE '%Ponei%'

FROM transacao_produto
WHERE IdProduto = 15


-- Nesse exercico ainda nao usei subqueries, mas poderia ser feito.