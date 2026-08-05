# 1. Le restamos 1 corazón completo (2 puntos) a la variable
scoreboard players remove @s vida_max 2

# 2. Guardamos esa nueva cantidad en la memoria temporal del servidor
execute store result storage myth_diff:temp vida int 1 run scoreboard players get @s vida_max

# 3. Llamamos al macro inyectándole la memoria
function myth_diff:player/set_health with storage myth_diff:temp

# 4. Cinemática de Kharvex
title @s title {"text":"¡YO ME LLEVO ESTO!","color":"dark_gray","bold":true}
title @s subtitle {"text":"¡JAJAJA!","color":"gray"}
playsound minecraft:entity.wither.ambient master @s ~ ~ ~ 1 0.5