-- Quais foram os criadores de mapa mais famosos. E quantos mapas ele criou
SELECT COUNT(c.maker) AS "Quantidade de mapas criados", c.maker
FROM course c
JOIN courses_meta
USING(id)
group by c.maker



