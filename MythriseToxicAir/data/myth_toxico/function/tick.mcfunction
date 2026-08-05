# 1. Gestionar el ciclo de tiempo (1h activo / 1h descanso)
function myth_toxico:event/cycle

# 2. Si el evento está activo, ejecutar las acciones
execute if score #active toxic_event matches 1 run function myth_toxico:event/active