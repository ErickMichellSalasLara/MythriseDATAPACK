# Temporizadores originales
scoreboard objectives add exp_timer dummy
scoreboard objectives add border_timer dummy
scoreboard objectives add sz_timer dummy

# Nuevos marcadores para el ciclo del evento
scoreboard objectives add evento_estado dummy
scoreboard objectives add evento_timer dummy

# Inicialización por defecto (Inactivo)
scoreboard players set #global evento_estado 0
scoreboard players set #global evento_timer 0

tellraw @a {"text":"[!]KHARVEX a enviado Explosiones Arcanas!!","color":"dark_purple","bold":true}