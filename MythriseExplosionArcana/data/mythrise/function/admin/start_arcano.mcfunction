# Cambia el estado a activo y reinicia el reloj
scoreboard players set #global evento_estado 1
scoreboard players set #global evento_timer 0
scoreboard players set #global exp_timer 0

# Anuncio global
title @a title {"text":""}
title @a subtitle {"text":"¡KHARVEX ha enviado Explosiones Arcanas!","color":"dark_purple","bold":true}
title @a actionbar {"text":"¡BUSCA REFUGIO!","color":"red","bold":true}
playsound minecraft:entity.ender_dragon.growl hostile @a ~ ~ ~ 1 0.8
tellraw @a {"text":"[!] El cielo se oscurece... Las Explosiones Arcanas han comenzado.","color":"dark_purple","bold":true}