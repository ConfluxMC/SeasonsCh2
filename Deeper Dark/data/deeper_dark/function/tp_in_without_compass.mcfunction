function deeper_dark:valid_spawn/setup

execute in deeper_dark:deeper_dark run function deeper_dark:teleport with storage deeper_dark:data lastfoundstructure2
execute at @s run spreadplayers ~ ~ 0 10 under 63 false @s[predicate=deeper_dark:in_deeper_dark]

#saftey
execute at @s run fill ~ ~ ~ ~ ~1 ~ minecraft:air destroy
execute at @s run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:air replace minecraft:sculk_sensor
execute at @s run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:air replace minecraft:calibrated_sculk_sensor
execute at @s run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:air replace minecraft:sculk_shrieker