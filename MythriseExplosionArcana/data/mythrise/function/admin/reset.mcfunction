# Fuerza el reinicio a estado inactivo de forma silenciosa
scoreboard players set #global evento_estado 0
scoreboard players set #global evento_timer 0
scoreboard players set #global exp_timer 0

# Elimina cualquier marcador de explosión pendiente
kill @e[type=marker,tag=exp_target]

tellraw @s {"text":"[Admin] El evento Arcano ha sido reseteado y forzado a inactivo.","color":"red"}