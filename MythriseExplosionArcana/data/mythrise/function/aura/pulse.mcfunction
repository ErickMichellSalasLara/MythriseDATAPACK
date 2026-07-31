scoreboard players set @s sz_timer 0

# Sonido mágico
playsound minecraft:block.amethyst_block.chime ambient @a[distance=..25] ~ ~ ~ 0.5 0.5

# --- SUELO PROFUNDO (Bordes del cuadrado a 20 bloques por debajo) ---
particle minecraft:end_rod ~ ~-20 ~-20 20.0 0.0 0.0 0 20 force
particle minecraft:end_rod ~ ~-20 ~20 20.0 0.0 0.0 0 20 force
particle minecraft:end_rod ~20 ~-20 ~ 0.0 0.0 20.0 0 20 force
particle minecraft:end_rod ~-20 ~-20 ~ 0.0 0.0 20.0 0 20 force

# --- TECHO ALTO (Bordes del cuadrado a 20 bloques por encima) ---
particle minecraft:end_rod ~ ~20 ~-20 20.0 0.0 0.0 0 20 force
particle minecraft:end_rod ~ ~20 ~20 20.0 0.0 0.0 0 20 force
particle minecraft:end_rod ~20 ~20 ~ 0.0 0.0 20.0 0 20 force
particle minecraft:end_rod ~-20 ~20 ~ 0.0 0.0 20.0 0 20 force

# --- PILARES (Conectan el suelo profundo con el techo alto) ---
particle minecraft:witch ~20 ~ ~20 0.0 20.0 0.0 0 25 force
particle minecraft:witch ~-20 ~ ~20 0.0 20.0 0.0 0 25 force
particle minecraft:witch ~20 ~ ~-20 0.0 20.0 0.0 0 25 force
particle minecraft:witch ~-20 ~ ~-20 0.0 20.0 0.0 0 25 force