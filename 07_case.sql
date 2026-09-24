
-- intervalos
-- de 0 a 500 
-- 501 1000 
-- 1001 a 5000
-- 5001 a 10000

SELECT idCliente , qtdePontos,
CASE
    WHEN qtdePontos BETWEEN 0 AND 500 THEN 'standard'
    WHEN qtdePontos BETWEEN 501 AND 1000 THEN 'normal'
    WHEN qtdePontos BETWEEN 1001 AND 5000 THEN 'premium'
    WHEN qtdePontos BETWEEN 5001 AND 10000 THEN 'premium plus'
    ELSE 'picoroso'
END AS nomeGrupos
FROM clientes
ORDER BY qtdePontos DESC
LIMIT 10;

