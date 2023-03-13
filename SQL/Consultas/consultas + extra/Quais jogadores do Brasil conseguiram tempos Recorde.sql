SELECT flag,name,player,MIN(timeRecord) as timeRecord,title,difficulty FROM players
JOIN records USING(player)
JOIN courses USING(id)
WHERE 
difficulty = "superExpert"
AND flag ="BR"
GROUP by title
ORDER BY timeRecord;

