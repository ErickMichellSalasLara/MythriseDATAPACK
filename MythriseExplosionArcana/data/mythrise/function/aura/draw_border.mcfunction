particle minecraft:end_rod ~ ~0.5 ~ 0 0.5 0 0.01 2 force
particle minecraft:witch ~ ~1 ~ 0 0 0 0 1 force

# Lógica de rotación y movimiento por cada lado
execute if entity @s[tag=drawer_n] run tp @s ~1 ~ ~
execute if entity @s[tag=drawer_n,x=~19,dx=2] run tp @s ~-20 ~ ~

execute if entity @s[tag=drawer_e] run tp @s ~ ~ ~1
execute if entity @s[tag=drawer_e,z=~19,dz=2] run tp @s ~ ~ ~-20

execute if entity @s[tag=drawer_s] run tp @s ~-1 ~ ~
execute if entity @s[tag=drawer_s,x=~-19,dx=2] run tp @s ~20 ~ ~

execute if entity @s[tag=drawer_w] run tp @s ~ ~ ~-1
execute if entity @s[tag=drawer_w,z=~-19,dz=2] run tp @s ~ ~ ~20