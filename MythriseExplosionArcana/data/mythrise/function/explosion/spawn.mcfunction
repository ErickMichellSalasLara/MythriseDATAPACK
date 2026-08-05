summon marker ~ ~ ~ {Tags:["exp_target"]}

# Le damos al marcador una rotación aleatoria de 360 grados usando comandos nativos 1.21
execute as @e[type=marker,tag=exp_target] run execute store result entity @s Rotation[0] float 1 run random value -180..180

# Movemos el marcador 5 bloques hacia adelante en la dirección a la que esté mirando
execute as @e[type=marker,tag=exp_target] at @s run tp @s ^ ^ ^5

# Verifica si cayó dentro del radio de 16 bloques de la Zona Segura (15 de radio + 1 de margen)
execute as @e[type=marker,tag=exp_target] at @s run function mythrise:explosion/pre_explosion