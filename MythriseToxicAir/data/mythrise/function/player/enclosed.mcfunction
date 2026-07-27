# Si hay un bloque solido justo arriba, se considera encerrado
execute unless block ~ ~1 ~ #minecraft:impermeable run return 0

# Puedes usar un scoreboard para marcar a jugadores encerrados si lo necesitas
# Por ahora solo evitamos el desgaste y el daño