-- LISTAR CLIENTES COM 100 A 200 PTS

SELECT idCliente,qtdePontos
FROM clientes

WHERE qtdePontos BETWEEN 100 AND 200
ORDER BY qtdePontos ASC
LIMIT 200;

-- poderia ser feito com >= e <=, mas BETWEEN é mais elegante e legível
-- BETWEEN é inclusivo, ou seja, inclui os valores 100 e 200 na busca.