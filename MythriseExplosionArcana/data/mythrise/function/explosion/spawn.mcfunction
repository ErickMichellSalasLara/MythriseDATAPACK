summon marker ~ ~ ~ {Tags:["exp_target"]}
# Dispersa la explosión alrededor del jugador
spreadplayers ~ ~ 3 12 false @e[type=marker,tag=exp_target,distance=..2]

# Evalúa la posición final del objetivo
execute as @e[type=marker,tag=exp_target] at @s run function mythrise:explosion/pre_explosion