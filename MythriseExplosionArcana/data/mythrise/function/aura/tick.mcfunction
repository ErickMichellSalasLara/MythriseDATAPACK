# Si el spawner es destruido, matar el campo de fuerza y sus dibujantes
execute unless block ~ ~ ~ minecraft:spawner run kill @e[type=marker,tag=drawer_n,distance=..15]
execute unless block ~ ~ ~ minecraft:spawner run kill @e[type=marker,tag=drawer_e,distance=..15]
execute unless block ~ ~ ~ minecraft:spawner run kill @e[type=marker,tag=drawer_s,distance=..15]
execute unless block ~ ~ ~ minecraft:spawner run kill @e[type=marker,tag=drawer_w,distance=..15]
execute unless block ~ ~ ~ minecraft:spawner run kill @s

# Control del movimiento del borde (Animación progresiva)
execute as @e[type=marker,tag=drawer_n,distance=..15] at @s run function mythrise:aura/draw_border
execute as @e[type=marker,tag=drawer_e,distance=..15] at @s run function mythrise:aura/draw_border
execute as @e[type=marker,tag=drawer_s,distance=..15] at @s run function mythrise:aura/draw_border
execute as @e[type=marker,tag=drawer_w,distance=..15] at @s run function mythrise:aura/draw_border