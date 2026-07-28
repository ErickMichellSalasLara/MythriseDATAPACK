# Crear el marker justo encima del beacon
summon marker ~ ~1 ~ {Tags:["mythrise.safe_zone"]}

# Inicializar variables del marker recién creado

scoreboard players set @e[type=marker,tag=mythrise.safe_zone,sort=nearest,limit=1] mythrise.state 1

scoreboard players set @e[type=marker,tag=mythrise.safe_zone,sort=nearest,limit=1] mythrise.animation 0

# Pulso aleatorio para evitar sincronización
scoreboard players random @e[type=marker,tag=mythrise.safe_zone,sort=nearest,limit=1] mythrise.pulse 0 1200
