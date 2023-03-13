-- Qual foi o melhor tempo para cada uma das dificuldades.
SELECT maker,difficulty,title,player,flag,catch as Data,
MIN(r.timeRecord)
FROM courses
JOIN records r USING(id)
JOIN players USING(player)
GROUP BY difficulty
ORDER by timeRecord ASC;
