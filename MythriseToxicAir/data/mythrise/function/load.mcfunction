# Crear los contadores del sistema
scoreboard objectives add mythrise_event dummy
scoreboard objectives add mythrise_timer dummy

tellraw @a [{"text":"[Mythrise] ","color":"dark_red","bold":true},{"text":"Sistema de Aire Tóxico cargado correctamente.","color":"green"}]