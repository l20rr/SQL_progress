-- Lista de transaçoes feitas no final de semana
SELECT IdTransacao,
        DtCriacao,
        strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS DiaDaSemana

FROM transacoes

WHERE strftime('%w', datetime(substr(DtCriacao, 1, 19))) IN ('0','6')

LIMIT 20;

-- WHERE DiaDaSemana IN ('0','6');  nem todos os SGBDs aceitam WHERE com alias, então é melhor usar a função diretamente no WHERE
-- pega o dia da semana da data de criação. 0 = domingo, 1 = segunda, 2 = terça, 3 = quarta, 4 = quinta, 5 = sexta, 6 = sábado
