# ¿Existe un Aura?

execute if entity @e[type=marker,tag=mythrise.safe_zone,distance=..10] run function mythrise:explosion/cancelled

# Si no existe un Aura

execute unless entity @e[type=marker,tag=mythrise.safe_zone,distance=..10] run function mythrise:explosion/damage

execute unless entity @e[type=marker,tag=mythrise.safe_zone,distance=..10] run function mythrise:explosion/destroy_blocks