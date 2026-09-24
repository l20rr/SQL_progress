SELECT *, 
        strftime('%w', datetime(substr(DtCriacao,1,19))) AS DiaSemana

FROM transacoes
-- WHERE QtdePontos = 1 
-- pega o dia da semana da data de criação. 0 = domingo, 1 = segunda, 2 = terça, 3 = quarta, 4 = quinta, 5 = sexta, 6 = sábado

WHERE DiaSemana IN ('6', '0')
