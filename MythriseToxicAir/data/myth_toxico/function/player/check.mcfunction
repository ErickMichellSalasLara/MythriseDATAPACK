# Jugadores SIN la máscara oficial en el casco
execute as @a unless items entity @s armor.head *[custom_data~{mythrise_mask:1b}] at @s run function myth_toxico:toxic_effects

# Jugadores CON la máscara oficial (se les limpia la oscuridad)
execute as @a if items entity @s armor.head *[custom_data~{mythrise_mask:1b}] at @s run effect clear @s minecraft:darkness

# Separar a los jugadores entre exterior (open_air) e interior (enclosed)
execute as @a at @s if predicate myth_toxico:can_see_sky run function myth_toxico:player/open_air
execute as @a at @s unless predicate myth_toxico:can_see_sky run function myth_toxico:player/enclosed