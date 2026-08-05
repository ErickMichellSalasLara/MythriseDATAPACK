# 1. Leemos la vida base actual del jugador al que se le ejecutará el comando
execute store result score @s vida_max run attribute @s minecraft:generic.max_health base get

# 2. Le sumamos 1 corazón completo (2 puntos)
scoreboard players add @s vida_max 2

# 3. Guardamos esa nueva cantidad en la memoria temporal del servidor
execute store result storage myth_diff:temp vida int 1 run scoreboard players get @s vida_max

# 4. Llamamos al macro que ya tienes creado para inyectarle la nueva vida
function myth_diff:player/set_health with storage myth_diff:temp

# 5. Le mandamos un mensaje de alivio al jugador
tellraw @s {"text":"Los dioses se han apiadado de ti. Has recuperado 1 corazón.","color":"green","bold":true}
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1