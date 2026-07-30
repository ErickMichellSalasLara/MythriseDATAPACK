# Inicializar marcadores de zona segura recién colocados
execute as @e[type=marker,tag=sz_init] at @s run function mythrise:aura/setup

# Ejecutar lógica de auras activas
execute as @e[type=marker,tag=safe_zone] at @s run function mythrise:aura/tick

# NUEVO: Lógica de la advertencia antes de explotar
execute as @e[type=marker,tag=exp_detonating] at @s run function mythrise:explosion/detonate_tick

# Ejecutar lógica del ciclo del evento
function mythrise:event/tick