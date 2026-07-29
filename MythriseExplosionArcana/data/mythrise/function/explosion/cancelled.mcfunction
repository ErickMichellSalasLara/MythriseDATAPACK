# Sonidos de choque y rechazo mágico
playsound minecraft:item.shield.block ambient @a ~ ~ ~ 3 0.5
playsound minecraft:block.beacon.deactivate ambient @a ~ ~ ~ 2 2.0
playsound minecraft:entity.evoker.cast_spell ambient @a ~ ~ ~ 2 1.2

# Efecto visual: Un destello (flash) y partículas dispersándose simulando una pared golpeada
particle minecraft:flash ~ ~1 ~ 0 0 0 0 1 force
particle minecraft:enchant ~ ~1 ~ 1.5 1.5 1.5 0.5 200 force
particle minecraft:nautilus ~ ~1 ~ 1 1 1 0.1 50 force
particle minecraft:wax_off ~ ~1 ~ 2 2 2 0.1 100 force

# Eliminamos el marcador
kill @s