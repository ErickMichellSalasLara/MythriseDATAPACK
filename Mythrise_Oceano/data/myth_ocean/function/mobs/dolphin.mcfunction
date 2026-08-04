# 1. Reducir el cooldown de los delfines activos
execute as @e[type=dolphin,scores={myth_ocean_dolphin_cd=1..}] run scoreboard players remove @s myth_ocean_dolphin_cd 20

# 2. Marcar delfines disponibles (Rango cuerpo a cuerpo: 1.5 bloques)
tag @e[type=dolphin] remove myth_ocean_stealer
execute as @e[type=dolphin] unless score @s myth_ocean_dolphin_cd matches 1.. at @s if entity @p[gamemode=!creative,gamemode=!spectator,distance=..1.5] run tag @s add myth_ocean_stealer

# 3. Transmitir alerta visual y sonora
execute as @e[type=dolphin,tag=myth_ocean_stealer] at @s as @p[gamemode=!creative,gamemode=!spectator,distance=..1.5] if data entity @s SelectedItem unless items entity @s weapon.mainhand #myth_ocean:protected_items run title @s actionbar {"text":"¡Un delfín astuto te ha robado!","color":"red","bold":true}
execute as @e[type=dolphin,tag=myth_ocean_stealer] at @s as @p[gamemode=!creative,gamemode=!spectator,distance=..1.5] if data entity @s SelectedItem unless items entity @s weapon.mainhand #myth_ocean:protected_items run playsound minecraft:entity.dolphin.attack ambient @s ~ ~ ~ 1.0 1.2

# 4. SISTEMA DE ROBO Y RECUPERACIÓN NBT
# A) Copiar el objeto de la mano del jugador al Storage temporal
execute as @e[type=dolphin,tag=myth_ocean_stealer] at @s as @p[gamemode=!creative,gamemode=!spectator,distance=..1.5] if data entity @s SelectedItem unless items entity @s weapon.mainhand #myth_ocean:protected_items run data modify storage myth_ocean:temp stolen_item set from entity @s SelectedItem

# B) Asegurarnos de que el delfín solo se lleve 1 unidad (En Minecraft 1.21 'count' es en minúscula)
execute if data storage myth_ocean:temp stolen_item run data modify storage myth_ocean:temp stolen_item.count set value 1

# C) Entregar el objeto al delfín y hacerlo caer al morir (Drop Chance 1.0f = 100%)
execute as @e[type=dolphin,tag=myth_ocean_stealer] if data storage myth_ocean:temp stolen_item run data modify entity @s HandItems[0] set from storage myth_ocean:temp stolen_item
execute as @e[type=dolphin,tag=myth_ocean_stealer] if data storage myth_ocean:temp stolen_item run data modify entity @s HandDropChances[0] set value 1.0f

# D) Borrar el objeto temporal de la memoria para que no interfiera en robos futuros
data remove storage myth_ocean:temp stolen_item

# E) Quitarle 1 unidad al jugador
execute as @e[type=dolphin,tag=myth_ocean_stealer] at @s as @p[gamemode=!creative,gamemode=!spectator,distance=..1.5] if data entity @s SelectedItem unless items entity @s weapon.mainhand #myth_ocean:protected_items run clear @s * 1

# 5. Aplicar efectos de huida
execute as @e[type=dolphin,tag=myth_ocean_stealer] at @s run particle minecraft:splash ~ ~1 ~ 0.5 0.5 0.5 0.2 30
execute as @e[type=dolphin,tag=myth_ocean_stealer] run effect give @s minecraft:speed 4 3 true
execute as @e[type=dolphin,tag=myth_ocean_stealer] run scoreboard players operation @s myth_ocean_dolphin_cd = #dolphin_cooldown myth_ocean_config