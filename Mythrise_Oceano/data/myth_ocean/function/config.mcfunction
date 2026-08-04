# Modifique estos valores para ajustar el balance del servidor sin alterar la lógica de comandos

# Ticks de reducción del efecto Respiración Acuática (20 ticks = 1 segundo)
# 5 segundos
scoreboard players set #drowned_drain myth_ocean_config 100
# 10 segundos
scoreboard players set #guardian_drain myth_ocean_config 200

# Cooldown individual del delfín (2 minutos = 2400 ticks)
scoreboard players set #dolphin_cooldown myth_ocean_config 2400

# Rango de detección de robo para el delfín (en bloques)
scoreboard players set #dolphin_radius myth_ocean_config 16