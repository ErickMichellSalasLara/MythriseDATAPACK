execute if entity @e[type=marker,tag=safe_zone,distance=..16] run function mythrise:explosion/cancelled

# ÚNICAMENTE ejecutamos la advertencia, nada de detonar aún
execute unless entity @e[type=marker,tag=safe_zone,distance=..16] run function mythrise:explosion/warning