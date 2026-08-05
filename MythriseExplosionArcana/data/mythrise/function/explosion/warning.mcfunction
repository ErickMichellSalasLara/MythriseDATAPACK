# Cambiamos su etiqueta para que inicie la cuenta regresiva
tag @s remove exp_target
tag @s add exp_detonating
scoreboard players set @s exp_timer 0

# Partículas y sonido de advertencia inicial
particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.05 30 force
# Un solo sonido de advertencia fuerte
playsound minecraft:entity.ghast.warn hostile @a ~ ~ ~ 3 1.0