# Aplicar efectos a quienes respiren aire tóxico
effect give @s minecraft:darkness 3 0 true
effect give @s minecraft:wither 2 0 true
effect give @s minecraft:slowness 2 1 true
effect give @s minecraft:mining_fatigue 2 0 true

# Sonido de ahogo / tos
execute at @s run playsound minecraft:entity.player.hurt_drown player @s ~ ~ ~ 0.6 0.7

# Alerta visual en la barra de acción
title @s actionbar {"text":"⚠️ Estás respirando CAGADA","color":"red","bold":true}