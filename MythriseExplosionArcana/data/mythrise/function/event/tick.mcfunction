# ¿Está activo el evento?

execute if score #Arcano mythrise.event matches 1 run scoreboard players add #Explosion mythrise.timer 1

# ¿Es momento de generar una explosión?

execute if score #Explosion mythrise.timer matches 200.. run function mythrise:event/select_position