# Si está al aire libre SIN la máscara oficial -> sufre los efectos
execute as @s unless items entity @s armor.head *[custom_data~{mythrise_mask:1b}] run function myth_toxico:toxic_effects

# Si está al aire libre CON la máscara -> está protegido
execute as @s if items entity @s armor.head *[custom_data~{mythrise_mask:1b}] run effect clear @s minecraft:darkness