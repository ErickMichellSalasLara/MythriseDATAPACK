tag @s remove sz_init
tag @s add safe_zone
# Desactivamos el spawner para que no invoque más marcadores
data modify block ~ ~ ~ SpawnData set value {}
data modify block ~ ~ ~ MaxNearbyEntities set value 0

# Generamos marcadores "dibujantes" en las 4 esquinas del área 20x20
summon marker ~-10 ~ ~-10 {Tags:["drawer_n"]}
summon marker ~10 ~ ~-10 {Tags:["drawer_e"]}
summon marker ~10 ~ ~10 {Tags:["drawer_s"]}
summon marker ~-10 ~ ~10 {Tags:["drawer_w"]}