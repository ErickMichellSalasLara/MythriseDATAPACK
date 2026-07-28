# RESET

kill @e[type=marker,tag=mythrise.safe_zone]

kill @e[type=marker,tag=mythrise.wave]

scoreboard players reset * mythrise.state
scoreboard players reset * mythrise.animation
scoreboard players reset * mythrise.pulse
scoreboard players reset * mythrise.wave

scoreboard players set #Arcano mythrise.event 0
scoreboard players set #Explosion mythrise.timer 0