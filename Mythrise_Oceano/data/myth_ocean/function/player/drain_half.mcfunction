# Extraer la duración restante actual y el amplificador
execute store result score #current_duration myth_ocean_temp run data get entity @s active_effects[{id:"minecraft:water_breathing"}].duration
execute store result score #current_amplifier myth_ocean_temp run data get entity @s active_effects[{id:"minecraft:water_breathing"}].amplifier

# Limpiar el efecto original inmediatamente para evitar bloqueos del juego
effect clear @s minecraft:water_breathing

# Dividir el tiempo restante entre 2 (Reducción del 50%)
scoreboard players set #two myth_ocean_temp 2
scoreboard players operation #current_duration myth_ocean_temp /= #two myth_ocean_temp

# Si aún queda tiempo, calcular los segundos y enviar a la Macro
execute if score #current_duration myth_ocean_temp matches 1.. run scoreboard players operation #seconds_left myth_ocean_temp = #current_duration myth_ocean_temp
execute if score #current_duration myth_ocean_temp matches 1.. run scoreboard players set #twenty myth_ocean_temp 20
execute if score #current_duration myth_ocean_temp matches 1.. run scoreboard players operation #seconds_left myth_ocean_temp /= #twenty myth_ocean_temp

execute if score #current_duration myth_ocean_temp matches 1.. store result storage myth_ocean:macro input.seconds int 1 run scoreboard players get #seconds_left myth_ocean_temp
execute if score #current_duration myth_ocean_temp matches 1.. store result storage myth_ocean:macro input.amplifier int 1 run scoreboard players get #current_amplifier myth_ocean_temp

# Ejecutar el reabastecimiento del efecto dinámico
execute if score #current_duration myth_ocean_temp matches 1.. run function myth_ocean:player/apply_drain with storage myth_ocean:macro input