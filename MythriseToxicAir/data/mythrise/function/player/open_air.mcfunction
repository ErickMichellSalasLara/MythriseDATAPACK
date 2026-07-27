# Si está al aire libre SIN la máscara oficial -> sufre los efectos del aire tóxico
execute as @s[nbt=!{Inventory:[{Slot:103b,components:{"minecraft:custom_data":{mythrise_mask:1b}}}]}] run function mythrise:toxic_effects

# Si está al aire libre CON la máscara -> está protegido (se le limpia la oscuridad)
execute as @s[nbt={Inventory:[{Slot:103b,components:{"minecraft:custom_data":{mythrise_mask:1b}}}]}] run effect clear @s minecraft:darkness