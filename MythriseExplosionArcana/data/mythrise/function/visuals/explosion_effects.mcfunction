# 1. Destruir Obsidiana y Obsidiana Llorosa en un radio de 5 bloques (cubo ~-5 a ~5)
# Usa 'destroy' si quieres que suelte el ítem, o 'air' si quieres que la vaporice por completo.
fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace minecraft:obsidian
fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace minecraft:crying_obsidian

# 2. Generar la explosión de Creeper Cargado con radio de 5 bloques
summon creeper ~ ~ ~ {Fuse:0b, powered:1b, ExplosionRadius:5b}

# 3. Partículas temáticas de Kharvex (Partículas de Dragón + Chispa Arcana)
particle minecraft:dragon_breath ~ ~1 ~ 2 2 2 0.1 150 force
particle minecraft:explosion_emitter ~ ~1 ~ 0.5 0.5 0.5 0 1 force
particle minecraft:electric_spark ~ ~1 ~ 3 3 3 0.2 80 force

# 4. Sonido épico de impacto
sound minecraft:entity.generic.explode master @a ~ ~ ~ 3 0.6