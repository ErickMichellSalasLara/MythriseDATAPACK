scoreboard players add @s exp_timer 1

# Mientras pasan los 3 segundos, emite un pilar de partículas para que el jugador lo vea
particle minecraft:soul_fire_flame ~ ~1 ~ 0.2 0.5 0.2 0.02 5 force
particle minecraft:witch ~ ~1 ~ 0.5 0.5 0.5 0.01 2 force

# A los 18 ticks (0.8 segundos exactos) detona
execute if score @s exp_timer matches 20.. run function mythrise:explosion/trigger