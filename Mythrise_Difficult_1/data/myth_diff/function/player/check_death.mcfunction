# 1. Reiniciamos el contador de muertes
scoreboard players set @s muertes 0

# 2. Leemos la vida base actual del jugador
execute store result score @s vida_max run attribute @s minecraft:generic.max_health base get

# 3. Si su vida base es mayor a 10 (5 corazones), ejecutamos el robo de Kharvex
execute if score @s vida_max matches 12.. run function myth_diff:player/apply_penalty

# 4. Si su vida base ya llegó al mínimo (10 puntos / 5 corazones)
execute if score @s vida_max matches ..11 run tellraw @s {"text":"Tu alma está al límite.","color":"dark_gray","italic":true}