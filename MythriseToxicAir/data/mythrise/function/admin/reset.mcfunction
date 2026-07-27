# Reiniciar totalmente el sistema
scoreboard players set #active mythrise_event 0
scoreboard players set #cycle_timer mythrise_timer 0
scoreboard players set #wear_timer mythrise_timer 0
effect clear @a minecraft:darkness
effect clear @a minecraft:wither
effect clear @a minecraft:slowness
effect clear @a minecraft:mining_fatigue
tellraw @a {"text":"[Admin] El aire ha sido reiniciado.","color":"yellow"}