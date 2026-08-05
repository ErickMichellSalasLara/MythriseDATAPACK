# Cambia el estado a inactivo y reinicia el reloj
scoreboard players set #global evento_estado 0
scoreboard players set #global evento_timer 0

# Anuncio global
title @a title {"text":""}
title @a subtitle {"text":"SON LIBRES POR AHORA!!","color":"dark_gray","bold":true}
title @a actionbar {"text":"LA PROXIMA ME LAS PAGARAN!.","color":"gray"}
playsound minecraft:entity.player.levelup ambient @a ~ ~ ~ 1 0.5
tellraw @a {"text":"[!]Las Explosiones Arcanas se han disipado.","color":"green","bold":true}