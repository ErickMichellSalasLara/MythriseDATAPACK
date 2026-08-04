# Extraer la duración restante en ticks y el amplificador del NBT del jugador
execute store result score #current_duration myth_ocean_temp run data get entity @s active_effects[{id:"minecraft:water_breathing"}].duration
execute store result score #current_amplifier myth_ocean_temp run data get entity @s active_effects[{id:"minecraft:water_breathing"}].amplifier

# Restar la penalización correspondiente
scoreboard players operation #current_duration myth_ocean_temp -= #drain_amount myth_ocean_temp

# Si la duración resulta menor o igual a cero, remover el efecto por completo
execute if score #current_duration myth_ocean_temp matches ..0 run effect clear @s minecraft:water_breathing

# Si la duración restante es válida, calcular tiempo restante en segundos
execute if score #current_duration myth_ocean_temp matches 1.. run scoreboard players operation #seconds_left myth_ocean_temp = #current_duration myth_ocean_temp
execute if score #current_duration myth_ocean_temp matches 1.. run scoreboard players set #twenty myth_ocean_temp 20
execute if score #current_duration myth_ocean_temp matches 1.. run scoreboard players operation #seconds_left myth_ocean_temp /= #twenty myth_ocean_temp

# Almacenar en NBT Storage para ejecución de Macro
execute store result storage myth_ocean:macro input.seconds int 1 run scoreboard players get #seconds_left myth_ocean_temp
execute store result storage myth_ocean:macro input.amplifier int 1 run scoreboard players get #current_amplifier myth_ocean_temp

# Reaplicar efecto modificado mediante Macro
execute if score #current_duration myth_ocean_temp matches 1.. run function myth_ocean:player/apply_drain with storage myth_ocean:macro input