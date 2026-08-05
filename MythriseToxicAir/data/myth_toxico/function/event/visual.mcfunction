# Reiniciar temporizador de partículas
scoreboard players set #particle_timer toxic_timer 0

# Genera solo 2 partículas livianas en modo normal (solo visibles para quienes estén cerca)
execute as @a at @s run particle minecraft:sculk_soul ~ ~1.5 ~ 6 1.5 6 0.01 2 normal