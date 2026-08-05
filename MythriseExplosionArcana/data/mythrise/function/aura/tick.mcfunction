execute unless block ~ ~ ~ minecraft:spawner run kill @e[type=marker,tag=drawer_n,distance=..30]
execute unless block ~ ~ ~ minecraft:spawner run kill @e[type=marker,tag=drawer_e,distance=..30]
execute unless block ~ ~ ~ minecraft:spawner run kill @e[type=marker,tag=drawer_s,distance=..30]
execute unless block ~ ~ ~ minecraft:spawner run kill @e[type=marker,tag=drawer_w,distance=..30]
# Si rompes el spawner, el marcador central se autodestruye
execute unless block ~ ~ ~ minecraft:spawner run kill @s

# Temporizador de pulso: cada 5 segundos (100 ticks) destella la barrera
scoreboard players add @s sz_timer 1
execute if score @s sz_timer matches 100.. run function mythrise:aura/pulse

execute if score @s sz_timer matches 200.. run summon marker ~-15 ~ ~-15 {Tags:["drawer_n"]}
execute if score @s sz_timer matches 200.. run summon marker ~15 ~ ~-15 {Tags:["drawer_e"]}
execute if score @s sz_timer matches 200.. run summon marker ~15 ~ ~15 {Tags:["drawer_s"]}
execute if score @s sz_timer matches 200.. run summon marker ~-15 ~ ~15 {Tags:["drawer_w"]}
execute if score @s sz_timer matches 200.. run scoreboard players set @s sz_timer 0

# Mueve los marcadores que estén vivos
execute as @e[type=marker,tag=drawer_n,distance=..30] at @s run function mythrise:aura/draw_border
execute as @e[type=marker,tag=drawer_e,distance=..30] at @s run function mythrise:aura/draw_border
execute as @e[type=marker,tag=drawer_s,distance=..30] at @s run function mythrise:aura/draw_border
execute as @e[type=marker,tag=drawer_w,distance=..30] at @s run function mythrise:aura/draw_border