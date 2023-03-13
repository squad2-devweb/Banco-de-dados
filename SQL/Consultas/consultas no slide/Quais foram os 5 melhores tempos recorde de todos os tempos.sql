-- Quais foram os 5 melhores tempos recorde de todos os tempos?
SELECT c.maker,c.difficulty,c.title,p.player ,p.flag,r.catch AS Data,r.timeRecord
FROM players p
JOIN records r
USING(player)
JOIN courses c
USING(id)
ORDER BY timeRecord ASC
LIMIT 5;