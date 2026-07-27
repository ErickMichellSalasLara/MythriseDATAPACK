# 1. Renderizar partículas cada 5 ticks (evita saturación de red y lag)
scoreboard players add #particle_timer mythrise_timer 1
execute if score #particle_timer mythrise_timer matches 5.. run function mythrise:event/visual

# 2. Comprobar la máscara de los jugadores
function mythrise:player/check

# 3. Desgaste de la máscara (Cada 392 ticks = ~19.6s para durar 1.5 horas de uso acumulado)
scoreboard players add #wear_timer mythrise_timer 1
execute if score #wear_timer mythrise_timer matches 392.. run function mythrise:player/damage_mask