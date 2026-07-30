scoreboard players set #global exp_timer 0

# Ahora seleccionamos a todos los jugadores (el filtro de zona se hará en el punto de impacto)
execute as @a at @s run function mythrise:explosion/spawn

# Selecciona a los jugadores que NO estén a 10 bloques de un marcador de zona segura (30x30 = radio de 15)
execute as @a at @s unless entity @e[type=marker,tag=safe_zone,distance=..15] run function mythrise:explosion/spawn