# Obtener el nivel actual de comida de cada jugador
execute as @a store result score @s mythrise_food run data get entity @s foodLevel

# Jugadores con hambre baja (2 de comida o menos) -> aplicar efectos negativos
execute as @a[scores={mythrise_food=..2}] at @s run function mythrise:player/starving

# Jugadores con la comida totalmente llena (20) -> quitar los efectos negativos
execute as @a[scores={mythrise_food=20}] at @s run function mythrise:player/full_food
