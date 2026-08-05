# 1. Reducir el cooldown de los delfines activos
execute as @e[type=dolphin,scores={myth_ocean_dolphin_cd=1..}] run scoreboard players remove @s myth_ocean_dolphin_cd 20

# 2. Marcar delfines disponibles (Rango cuerpo a cuerpo: 1.5 bloques)
tag @e[type=dolphin] remove myth_ocean_stealer
execute as @e[type=dolphin] unless score @s myth_ocean_dolphin_cd matches 1.. at @s if entity @p[gamemode=!creative,gamemode=!spectator,distance=..1.5] run tag @s add myth_ocean_stealer

# 3. Intentar robar un objeto aleatorio de la hotbar
execute as @e[type=dolphin,tag=myth_ocean_stealer] at @s run function myth_ocean:mobs/try_steal