# Verificar si el jugador posee el efecto de Respiración Acuática activo
execute unless predicate myth_ocean:has_water_breathing run return 0

# 1. Evaluar Guardián Anciano (Rango muy amplio, prioridad máxima)
execute if entity @e[type=elder_guardian,tag=myth_ocean_buffed,distance=..30] run scoreboard players set #is_elder myth_ocean_temp 1

# Evaluar cercanía de los atacantes para determinar cantidad de reducción

# 2. Guardián Normal (Solo si NO hay un Anciano atacando)
execute unless score #is_elder myth_ocean_temp matches 1 if entity @e[type=guardian,tag=myth_ocean_buffed,distance=..30] run scoreboard players operation #drain_amount myth_ocean_temp = #guardian_drain myth_ocean_config

# 3. Ahogado (Rango 6 bloques, prioridad mínima)
execute unless entity @e[type=guardian,tag=myth_ocean_buffed,distance=..15] if entity @e[type=drowned,tag=myth_ocean_buffed,distance=..6] run scoreboard players operation #drain_amount myth_ocean_temp = #drowned_drain myth_ocean_config

# Ejecutar reducciones dependiendo del atacante
execute if score #drain_amount myth_ocean_temp matches 1.. run function myth_ocean:player/drain_breathing
execute if score #is_elder myth_ocean_temp matches 1 run function myth_ocean:player/drain_half

# Limpiar variables temporales
scoreboard players set #is_elder myth_ocean_temp 0
scoreboard players set #drain_amount myth_ocean_temp 0