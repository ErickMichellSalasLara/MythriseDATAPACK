# 1. Sumamos 1 tick al temporizador global del evento
scoreboard players add #global exp_timer 1

# 2. Cuando pasan 5 segundos (100 ticks), ejecutamos el ataque SOLO en los jugadores válidos
execute if score #global exp_timer matches 100.. as @a[gamemode=!creative,gamemode=!spectator] at @s run function mythrise:explosion/spawn

# 3. LO MÁS IMPORTANTE: Reiniciamos el temporizador a 0 para que no se genere lag ni spam de explosiones
execute if score #global exp_timer matches 100.. run scoreboard players set #global exp_timer 0