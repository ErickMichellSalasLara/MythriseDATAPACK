# Aumentar el tiempo del evento cada tick
scoreboard players add #global evento_timer 1

# --- Si el evento está INACTIVO (Estado 0) ---
# Esperar 30 minutos (36000 ticks) para activarlo
execute if score #global evento_estado matches 0 if score #global evento_timer matches 36000.. run function mythrise:admin/start_arcano

# --- Si el evento está ACTIVO (Estado 1) ---
# Ejecutar las explosiones solo si está activo
execute if score #global evento_estado matches 1 run function mythrise:explosion/check_timer

# Esperar 15 minutos (18000 ticks) para desactivarlo
execute if score #global evento_estado matches 1 if score #global evento_timer matches 18000.. run function mythrise:admin/stop_arcano