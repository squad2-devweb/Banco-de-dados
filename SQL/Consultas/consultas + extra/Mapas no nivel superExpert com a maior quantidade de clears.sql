-- Mapas no nível superExpert com a maior quantidade de vezes zerado
SELECT title,difficulty,gameStyle,firstClear,MAX(clears),attempts  FROM course_meta
JOIN courses USING(id)
WHERE 
clears > 0
AND 
difficulty = "superExpert"
GROUP BY title
ORDER BY clears DESC


