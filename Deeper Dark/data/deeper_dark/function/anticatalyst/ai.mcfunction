scoreboard players set 2 deeper_dark.var 0
execute if predicate deeper_dark:anticatalyst_frequency run function deeper_dark:anticatalyst/look_for_sculk
#execute if predicate deeper_dark:nearby_sculk
execute at @e[type=marker,tag=deeper_dark.anticatalyst_particle] run particle minecraft:happy_villager ^ ^ ^ 0 0 0 1 1 force

execute unless block ~ ~ ~ minecraft:cobbled_deepslate run function deeper_dark:anticatalyst/break