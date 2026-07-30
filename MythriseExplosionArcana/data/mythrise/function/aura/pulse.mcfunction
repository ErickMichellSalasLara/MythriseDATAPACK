scoreboard players set @s sz_timer 0

# Sonido mágico
playsound minecraft:block.amethyst_block.chime ambient @a[distance=..20] ~ ~ ~ 0.5 0.5

# --- SUELO PROFUNDO (Bordes del cuadrado a 15 bloques por debajo) ---
particle minecraft:end_rod ~ ~-15 ~-15 15.0 0.0 0.0 0 20 force
particle minecraft:end_rod ~ ~-15 ~15 15.0 0.0 0.0 0 20 force
particle minecraft:end_rod ~15 ~-15 ~ 0.0 0.0 15.0 0 20 force
particle minecraft:end_rod ~-15 ~-15 ~ 0.0 0.0 15.0 0 20 force

# --- TECHO ALTO (Bordes del cuadrado a 15 bloques por encima) ---
particle minecraft:end_rod ~ ~15 ~-15 15.0 0.0 0.0 0 20 force
particle minecraft:end_rod ~ ~15 ~15 15.0 0.0 0.0 0 20 force
particle minecraft:end_rod ~15 ~15 ~ 0.0 0.0 15.0 0 20 force
particle minecraft:end_rod ~-15 ~15 ~ 0.0 0.0 15.0 0 20 force

# --- PILARES (Conectan el suelo profundo con el techo alto) ---
# Al ponerlos en Y=~ con dispersión Y=15.0, la magia se esparce 15 bloques arriba y abajo
particle minecraft:witch ~15 ~ ~15 0.0 15.0 0.0 0 25 force
particle minecraft:witch ~-15 ~ ~15 0.0 15.0 0.0 0 25 force
particle minecraft:witch ~15 ~ ~-15 0.0 15.0 0.0 0 25 force
particle minecraft:witch ~-15 ~ ~-15 0.0 15.0 0.0 0 25 force