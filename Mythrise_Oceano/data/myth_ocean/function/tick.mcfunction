# 1. Aplicación de atributos a mobs recién generados
execute as @e[type=drowned,tag=!myth_ocean_buffed] run function myth_ocean:mobs/drowned
execute as @e[type=guardian,tag=!myth_ocean_buffed] run function myth_ocean:mobs/guardian
execute as @e[type=elder_guardian,tag=!myth_ocean_buffed] run function myth_ocean:mobs/elder_guardian

# 2. Detección de daño a jugadores
execute as @a[scores={myth_ocean_dmg_taken=1..}] at @s run function myth_ocean:player/check_damage
scoreboard players set @a[scores={myth_ocean_dmg_taken=1..}] myth_ocean_dmg_taken 0

# 3. Lógica optimizada de delfines (se procesa cada 20 ticks / 1 segundo)
scoreboard players add #tick_counter myth_ocean_timer 1
execute if score #tick_counter myth_ocean_timer matches 20.. run function myth_ocean:mobs/dolphin
execute if score #tick_counter myth_ocean_timer matches 20.. run scoreboard players set #tick_counter myth_ocean_timer 0