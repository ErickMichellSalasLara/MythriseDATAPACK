# Temporizador de explosiones globales (Aprox cada 4 a 7 segundos)
scoreboard players add #global exp_timer 1
execute if score #global exp_timer matches 100.. run function mythrise:explosion/check