scoreboard objectives remove mythrise_food
scoreboard objectives add mythrise_food dummy

# Contador para regular el sonido de estómago (evita saturación de audio)
scoreboard objectives add mythrise_hunger_timer dummy

tellraw @a ["",{"text":"[Mythrise] ","color":"dark_red","bold":true},{"text":"Sistema de Hambre cargado correctamente.","color":"green"}]