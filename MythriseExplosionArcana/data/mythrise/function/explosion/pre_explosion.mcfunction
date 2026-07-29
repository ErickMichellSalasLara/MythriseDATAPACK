# Si el punto de impacto está a 11 bloques o menos del centro de una zona segura, se choca con la barrera
execute if entity @e[type=marker,tag=safe_zone,distance=..11] run function mythrise:explosion/cancelled

# Si no hay zonas seguras cerca, la explosión ocurre normalmente
execute unless entity @e[type=marker,tag=safe_zone,distance=..11] run function mythrise:explosion/trigger