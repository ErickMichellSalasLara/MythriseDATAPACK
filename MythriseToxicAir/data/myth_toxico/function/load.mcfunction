# Crear los contadores del sistema
scoreboard objectives add toxic_event dummy
scoreboard objectives add toxic_timer dummy

tellraw @a [{"text":"[Mythrise] ","color":"dark_red","bold":true},{"text":"Sistema de Aire Tóxico cargado correctamente.","color":"green"}]

# Desbloquear las recetas de Mythrise a todos los jugadores
recipe give @a myth_toxico:filter
recipe give @a myth_toxico:mask