# Aplicar efectos negativos
effect give @s minecraft:darkness 3 0 true
effect give @s minecraft:wither 2 0 true
effect give @s minecraft:slowness 2 1 true
effect give @s minecraft:mining_fatigue 2 0 true

# Sonido de ahogo regulado cada 3 segundos (60 ticks) para evitar saturación de audio
scoreboard players add @s mythrise_timer 1
execute if score @s mythrise_timer matches 60.. at @s run playsound minecraft:entity.player.hurt_drown player @s ~ ~ ~ 0.6 0.7
execute if score @s mythrise_timer matches 60.. run scoreboard players set @s mythrise_timer 0

# Alerta en la barra de acción
title @s actionbar {"text":"Estás respirando aire tóxico!","color":"red","bold":true}