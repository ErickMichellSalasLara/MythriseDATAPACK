# Aislamos al jugador para el daño
execute as @a[tag=marca_caida_alta] run damage @s 6 minecraft:magic

# Aplicamos los efectos visuales y físicos
effect give @a[tag=marca_caida_alta] minecraft:slowness 30 2 true
title @a[tag=marca_caida_alta] actionbar {"text":"¡Pierna fracturada!","color":"dark_red"}

# Limpiamos la marca
tag @a[tag=marca_caida_alta] remove marca_caida_alta