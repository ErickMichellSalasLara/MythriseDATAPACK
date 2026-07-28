# Reiniciar temporizador
scoreboard players set #Explosion mythrise.timer 0

# Elegir jugador aleatorio que no esté en creativo ni espectador
execute as @r[gamemode=!creative,gamemode=!spectator] at @s unless entity @e[type=marker,tag=mythrise.safe_zone,distance=..10] run function mythrise:explosion/pre_explosion