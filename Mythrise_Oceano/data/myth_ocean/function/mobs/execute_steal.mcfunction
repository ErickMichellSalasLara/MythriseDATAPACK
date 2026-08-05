# Identificar al jugador más cercano
tag @p[gamemode=!creative,gamemode=!spectator,distance=..1.5] add myth_ocean_target

# Comprobar si la ranura aleatoria tiene un objeto válido y no protegido
$execute as @a[tag=myth_ocean_target,limit=1] if items entity @s hotbar.$(id) * unless items entity @s hotbar.$(id) #myth_ocean:protected_items run tag @s add myth_ocean_robbed

# Copiar el objeto del jugador a la memoria temporal (NBT Arrays usan 0b a 8b)
$execute as @a[tag=myth_ocean_robbed,limit=1] run data modify storage myth_ocean:temp stolen_item set from entity @s Inventory[{Slot: $(id)b}]

# Asegurarnos de que el delfín solo tome 1 unidad de ese objeto
execute if data storage myth_ocean:temp stolen_item run data modify storage myth_ocean:temp stolen_item.count set value 1

# Entregar el objeto al delfín y asegurar que lo suelte al 100% al morir
execute if data storage myth_ocean:temp stolen_item run data modify entity @s HandItems[0] set from storage myth_ocean:temp stolen_item
execute if data storage myth_ocean:temp stolen_item run data modify entity @s HandDropChances[0] set value 1.0f

# Restar 1 unidad exacta de esa ranura específica del jugador usando el modificador
$execute if data storage myth_ocean:temp stolen_item as @a[tag=myth_ocean_robbed,limit=1] run item modify entity @s hotbar.$(id) myth_ocean:subtract_one

# Feedback al jugador afectado
execute if data storage myth_ocean:temp stolen_item as @a[tag=myth_ocean_robbed,limit=1] run title @s actionbar {"text":"¡Un delfín astuto te ha robado!","color":"red","bold":true}
execute if data storage myth_ocean:temp stolen_item as @a[tag=myth_ocean_robbed,limit=1] run playsound minecraft:entity.dolphin.attack ambient @s ~ ~ ~ 1.0 1.2

# Efectos de huida para el delfín y aplicar cooldown
execute if data storage myth_ocean:temp stolen_item run particle minecraft:splash ~ ~1 ~ 0.5 0.5 0.5 0.2 30
execute if data storage myth_ocean:temp stolen_item run effect give @s minecraft:speed 4 3 true
execute if data storage myth_ocean:temp stolen_item run scoreboard players operation @s myth_ocean_dolphin_cd = #dolphin_cooldown myth_ocean_config

# Limpieza estricta de variables para evitar cruces de datos
data remove storage myth_ocean:temp stolen_item
tag @a remove myth_ocean_target
tag @a remove myth_ocean_robbed