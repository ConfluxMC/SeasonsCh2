data modify storage deeper_dark:temp_checkpoint compass.tp.dimension set from entity @s Dimension
data modify storage deeper_dark:temp_checkpoint compass.tp.x set from entity @s Pos[0]
data modify storage deeper_dark:temp_checkpoint compass.tp.y set from entity @s Pos[1]
data modify storage deeper_dark:temp_checkpoint compass.tp.z set from entity @s Pos[2]

data modify storage deeper_dark:temp_checkpoint compass.tp.dimension set from entity @s equipment.offhand.components.minecraft:lodestone_tracker.target.dimension
data modify storage deeper_dark:temp_checkpoint compass.tp.x set from entity @s equipment.offhand.components.minecraft:lodestone_tracker.target.pos[0]
data modify storage deeper_dark:temp_checkpoint compass.tp.y set from entity @s equipment.offhand.components.minecraft:lodestone_tracker.target.pos[1]
data modify storage deeper_dark:temp_checkpoint compass.tp.z set from entity @s equipment.offhand.components.minecraft:lodestone_tracker.target.pos[2]

function deeper_dark:checkpoints/adjust_height

data remove storage deeper_dark:temp_checkpoint compass.tp

execute at @s run function deeper_dark:tp_in_effects