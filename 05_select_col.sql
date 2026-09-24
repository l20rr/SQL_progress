SELECT idCliente,
           -- qtdePontos, 
           -- qtdePontos + 10 AS qtdePontosMais10,
           -- qtdePontos * 2 AS qtdePontosDobrado,
            DtCriacao,
            -- formata data para o padrão string. selecionando de 1 a 19 caracteres, que é o tamanho da data no padrão ISO 8601
           substr(DtCriacao,1,19) AS DtCriacaoFormatada,
           -- transforma o tipo de dado para datetime
            datetime(substr(DtCriacao,1,19)) AS DtCriacaoFormatadaDatetime,
            -- pega o dia da semana da data de criação. 0 = domingo, 1 = segunda, 2 = terça, 3 = quarta, 4 = quinta, 5 = sexta, 6 = sábado
            -- %w é dia da semana, %d é dia do mês, %m é mês, %Y é ano com 4 dígitos, %H é hora, %M é minuto, %S é segundo
            strftime('%w', datetime(substr(DtCriacao,1,19))) AS DiaSemana
FROM clientes