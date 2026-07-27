# Jugadores SIN la máscara oficial en el casco
execute as @a[nbt=!{Inventory:[{Slot:103b,components:{"minecraft:custom_data":{mythrise_mask:1b}}}]}] at @s run function mythrise:toxic_effects

# Jugadores CON la máscara oficial (se les limpia la oscuridad)
execute as @a[nbt={Inventory:[{Slot:103b,components:{"minecraft:custom_data":{mythrise_mask:1b}}}]}] at @s run effect clear @s minecraft:darkness