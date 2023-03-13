-- Quais os 3 mapas mais jogados?	incluindo o primeiro jogador a passar a fase. 
SELECT cm.id,cm.firstClear ,c.title,cm.players ,cm.clears,cm.attempts,cm.clearRate ,c.difficulty,c.maker
FROM course_meta cm
JOIN courses c
USING(id)
GROUP BY id DESC
ORDER BY attempts DESC
LIMIT 3;