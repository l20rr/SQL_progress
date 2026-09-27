-- lISTA DE CLIENTES COM 0 PONTOS

SELECT idCliente,qtdePontos
FROM clientes

WHERE qtdePontos = 0
LIMIT 20;