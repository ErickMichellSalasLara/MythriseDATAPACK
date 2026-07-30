tag @s remove sz_init
tag @s add safe_zone

execute align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ~ ~ ~
data modify block ~ ~ ~ MaxNearbyEntities set value 0s

# Limpiamos cualquier marcador viejo de pruebas anteriores
kill @e[type=marker,tag=drawer_n]
kill @e[type=marker,tag=drawer_e]
kill @e[type=marker,tag=drawer_s]
kill @e[type=marker,tag=drawer_w]

# Iniciamos el reloj en 0
scoreboard players set @s sz_timer 0