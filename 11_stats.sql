SELECT avg(qtdePontos) AS media_cartira, 
        1. * sum(qtdePontos) / count(idCliente) AS media_clientes,
        min(qtdePontos) AS min_cartira,
        max(qtdePontos) AS max_cartira,
        sum(FlTwitch) AS total_twitch,
        sum(FlEmail) 

FROM clientes

