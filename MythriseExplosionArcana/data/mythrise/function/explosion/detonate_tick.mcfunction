scoreboard players add @s exp_timer 1

# Mientras pasan los 3 segundos, emite un pilar de partículas
particle minecraft:soul_fire_flame ~ ~1 ~ 0.2 0.5 0.2 0.02 5 force
particle minecraft:witch ~ ~1 ~ 0.5 0.5 0.5 0.01 2 force

# COMPROBACIÓN CONTINUA: Si entra a una zona segura durante la advertencia, se cancela sí o sí.
execute at @e[type=marker,tag=safe_zone] positioned ~-20 ~-20 ~-20 if entity @s[dx=40,dy=40,dz=40] run function mythrise:explosion/cancelled

# A los 20 ticks (1 segundo exacto) detona, SOLO si el marcador sigue vivo
execute if entity @s if score @s exp_timer matches 20.. run function mythrise:explosion/trigger