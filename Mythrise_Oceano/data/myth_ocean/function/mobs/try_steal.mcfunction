# Generar un número aleatorio del 0 al 8
execute store result storage myth_ocean:macro slot.id int 1 run random value 0..8

# Ejecutar la macro inyectando el número aleatorio
function myth_ocean:mobs/execute_steal with storage myth_ocean:macro slot