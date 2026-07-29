particle minecraft:dragon_breath ~ ~1 ~ 2 2 2 0.05 150 force
playsound minecraft:entity.dragon_fireball.explode hostile @a ~ ~ ~ 3 0.8

fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:air replace minecraft:obsidian
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:air replace minecraft:crying_obsidian

damage @a[distance=..8.0] 80.0 minecraft:explosion

summon minecraft:creeper ~ ~ ~ {ExplosionRadius:6b,Fuse:0s,ignited:1b}

kill @s