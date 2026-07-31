# Volvemos a centrar la ejecución en la posición de la explosión (at @s)
# Sonidos de choque contundente contra un escudo mágico (en categoría master para audio 3D real)
execute at @s run playsound minecraft:item.shield.block master @a ~ ~ ~ 3 0.8
execute at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 2 2.0
execute at @s run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2 1.2

# Efecto visual: Destello de impacto y explosión estelar bloqueada en su centro
execute at @s run particle minecraft:flash ~ ~1 ~ 0 0 0 0 1 force
execute at @s run particle minecraft:end_rod ~ ~1 ~ 0.5 0.5 0.5 0.2 60 force
execute at @s run particle minecraft:enchant ~ ~1 ~ 1.5 1.5 1.5 0.5 150 force
execute at @s run particle minecraft:nautilus ~ ~1 ~ 1 1 1 0.1 40 force

# Eliminamos el marcador de la explosión instantáneamente
kill @s