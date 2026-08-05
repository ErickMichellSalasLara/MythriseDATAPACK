scoreboard players add #global evento_timer 1

# Inactivo (Estado 0): Esperar 40 minutos (48,000 ticks) para activarlo
execute if score #global evento_estado matches 0 if score #global evento_timer matches 48000.. run function mythrise:admin/start_arcano

# Activo (Estado 1): Ejecutar explosiones
execute if score #global evento_estado matches 1 run function mythrise:explosion/check_timer

# Activo (Estado 1): Esperar 5 minutos (6,000 ticks) para desactivarlo
execute if score #global evento_estado matches 1 if score #global evento_timer matches 6000.. run function mythrise:admin/stop_arcano