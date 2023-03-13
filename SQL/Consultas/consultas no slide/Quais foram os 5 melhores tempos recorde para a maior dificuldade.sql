-- Quais foram os 5 melhores tempos recorde para a maior dificuldade?
SELECT c.maker,c.difficulty,c.title,p.player ,p.flag,r.catch AS Data,r.timeRecord
FROM players p
JOIN records r
USING(player)
JOIN courses c
USING(id)
WHERE difficulty = "superExpert"
ORDER BY timeRecord
LIMIT 5