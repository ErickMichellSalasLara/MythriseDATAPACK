# 1. Gestionar el ciclo de tiempo (1h activo / 1h descanso)
function mythrise:event/cycle

# 2. Si el evento está activo, ejecutar las acciones
execute if score #active mythrise_event matches 1 run function mythrise:event/active