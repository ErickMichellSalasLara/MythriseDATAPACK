scoreboard players set #global exp_timer 0

# 1. Etiquetamos a todos los jugadores como "candidatos" para recibir una explosión
tag @a add exp_candidate

# 2. Buscamos zonas seguras, creamos un cubo de 40x40x40 (20 de radio) y quitamos la etiqueta a los que estén dentro
execute at @e[type=marker,tag=safe_zone] positioned ~-20 ~-20 ~-20 as @a[dx=40,dy=40,dz=40] run tag @s remove exp_candidate

# 3. Generamos la explosión SOLO en los jugadores que conservaron la etiqueta
execute as @a[tag=exp_candidate] at @s run function mythrise:explosion/spawn

# 4. Limpiamos la etiqueta
tag @a remove exp_candidate