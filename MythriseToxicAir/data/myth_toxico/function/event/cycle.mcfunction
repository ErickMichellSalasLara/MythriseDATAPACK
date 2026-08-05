# Avanzar el reloj del evento (0 a 144,000 ticks = 2 horas)
scoreboard players add #cycle_timer toxic_timer 1

# Tick 0: Iniciar 1 hora de evento
execute if score #cycle_timer toxic_timer matches 1 run function myth_toxico:event/start

# Tick 72,000 (60 minutos): Apagar evento para 1 hora de descanso
execute if score #cycle_timer toxic_timer matches 72000 run function myth_toxico:event/stop

# Tick 144,000 (120 minutos): Reiniciar el reloj
execute if score #cycle_timer toxic_timer matches 144000.. run scoreboard players set #cycle_timer toxic_timer 0