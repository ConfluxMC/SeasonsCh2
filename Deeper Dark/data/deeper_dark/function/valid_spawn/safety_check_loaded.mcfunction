# If area isn't loaded, summon a new marker to mark the area for safety next tick
execute unless loaded ~ ~ ~ run return run tag @s add deeper_dark.valid_spawn_safety_check

# If the area is loaded, make it safe
tag @s remove deeper_dark.valid_spawn_safety_check

fill ~ ~ ~ ~ ~1 ~ minecraft:air destroy
fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:air replace minecraft:sculk_sensor
fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:air replace minecraft:calibrated_sculk_sensor
fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:air replace minecraft:sculk_shrieker