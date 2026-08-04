# 1. Limpiar el efecto original para que Minecraft no ignore nuestra reducción
effect clear @s minecraft:water_breathing

# 2. Reaplicación dinámica del efecto con los valores inyectados por la macro
$effect give @s minecraft:water_breathing $(seconds) $(amplifier) true

# Reset del registro de transferencia
scoreboard players set #drain_amount myth_ocean_temp 0