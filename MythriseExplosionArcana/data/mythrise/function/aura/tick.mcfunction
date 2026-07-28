execute as @e[type=marker,tag=mythrise.safe_zone] run scoreboard players add @s mythrise.pulse 1

# Esto detecta si el tick llego a 1200 tick y si ya llego, ejecutara el pulso de esta carpeta
execute as @e[type=marker,tag=mythrise.safe_zone,scores={mythrise.pulse=1200..}] run function mythrise:aura/pulse

# -- Animaciones
# Detecta las animaciones que estan saliendo
execute as @e[type=marker,tag=mythrise.safe_zone,scores={mythrise.state=1}] run scoreboard players add @s mythrise.animation 1

# Cuando termine de detectarlo (40 ticks == 2 segundos) termina
execute as @e[type=marker,tag=mythrise.safe_zone,scores={mythrise.animation=40..}] run scoreboard players set @s mythrise.state 2

execute as @e[type=marker,tag=mythrise.safe_zone,scores={mythrise.state=3}] run function mythrise:visuals/visual_arcano

execute as @e[type=marker,tag=mythrise.safe_zone,scores={mythrise.state=4}] run function mythrise:aura/absorb