# Si la explosión cae FUERA del área de protección (radio 10 del marcador), ejecuta el efecto de daño
execute unless entity @e[type=marker,tag=mythrise.safe_zone,distance=..10] run function mythrise:explosion_effects

# Si la explosión cae DENTRO del área protegida, cancela la destrucción y muestra el escudo de partículas
execute if entity @e[type=marker,tag=mythrise.safe_zone,distance=..10] run particle minecraft:enchant ~ ~1 ~ 1 1 1 0.5 60 force
execute if entity @e[type=marker,tag=mythrise.safe_zone,distance=..10] run sound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 1.5

# Reproducimos un sonido de beacon apagandose cuando "choque" con el area segura

