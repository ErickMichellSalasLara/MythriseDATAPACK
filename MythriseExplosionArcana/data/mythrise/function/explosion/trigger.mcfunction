particle minecraft:dragon_breath ~ ~1 ~ 1 1 1 0.05 100 force
playsound minecraft:entity.dragon_fireball.explode hostile @a ~ ~ ~ 3 0.8

# Obsidiana se rompe solo en un área 3x3x3
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:obsidian
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:crying_obsidian

execute as @a[distance=..6.0,gamemode=!creative,gamemode=!spectator] run damage @s 50 minecraft:explosion

summon minecraft:creeper ~ ~ ~ {ExplosionRadius:3b,Fuse:0s,ignited:1b}

kill @s