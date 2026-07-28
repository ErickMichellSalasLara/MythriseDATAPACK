scoreboard players add @s mythrise.animation 1

#Tick 1
execute if score @s mythrise.animation matches 1 run particle minecraft:flash ~ ~1 ~

#Tick 5
execute if score @s mythrise.animation matches 5 run particle minecraft:reverse_portal ~ ~1 ~

#Tick 10
execute if score @s mythrise.animation matches 5 run particle minecraft:reverse_portal ~ ~1 ~

#Tick 15
execute if score @s mythrise.animation matches 10 run particle minecraft:dragon_breath ~ ~1 ~ 0.5 0.5 0.5 0.01 30 force

#Tick 20
execute if score @s mythrise.animation matches 20 run scoreboard players set @s mythrise.state 2

execute if score @s mythrise.animation matches 20 run scoreboard players set @s mythrise.animation 0
