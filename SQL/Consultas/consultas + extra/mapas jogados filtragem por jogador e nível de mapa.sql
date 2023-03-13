-- todos os mapas jogados por x jogador
SELECT id,player,flag,difficulty,gameStyle,title FROM players p
JOIN plays pl USING(player)
JOIN courses c USING(id)
WHERE player ='Pedro_explorer' ;