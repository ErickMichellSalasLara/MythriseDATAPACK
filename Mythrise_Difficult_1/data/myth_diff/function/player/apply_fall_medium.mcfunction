# Aislamos a cada jugador con la marca y le aplicamos el daño de forma individual
execute as @a[tag=marca_caida_media] run damage @s 2 minecraft:magic

# Le quitamos la marca para dejarlo limpio
tag @a[tag=marca_caida_media] remove marca_caida_media