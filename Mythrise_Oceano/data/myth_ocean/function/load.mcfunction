# Inicialización de Objetivos de Scoreboard
scoreboard objectives add myth_ocean_dmg_taken minecraft.custom:minecraft.damage_taken
scoreboard objectives add myth_ocean_dolphin_cd dummy
scoreboard objectives add myth_ocean_config dummy
scoreboard objectives add myth_ocean_temp dummy
scoreboard objectives add myth_ocean_timer dummy

# Ejecutar configuración inicial
function myth_ocean:config

tellraw @a {"text":"[Mythrise Oceano] Datapack cargado correctamente.","color":"dark_aqua"}