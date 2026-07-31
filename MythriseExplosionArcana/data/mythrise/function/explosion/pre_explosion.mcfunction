# Revisión del volumen cúbico (Radio 20 = Cubo de 40x40x40)
execute at @e[type=marker,tag=safe_zone] positioned ~-20 ~-20 ~-20 if entity @s[dx=40,dy=40,dz=40] run function mythrise:explosion/cancelled

# Si el marcador NO fue destruido en el paso anterior, damos la advertencia
execute if entity @s run function mythrise:explosion/warning