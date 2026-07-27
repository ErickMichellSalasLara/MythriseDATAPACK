# Si hay un bloque solido sobre la cabeza, no hay desgaste
execute unless block ~ ~1 ~ minecraft:air run return 0

# Si está expuesto, desgasta la máscara
function mythrise:player/damage_mask