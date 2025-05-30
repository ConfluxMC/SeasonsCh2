data modify storage deeper_dark:temp_checkpoint compass.tp.dimension set from entity @s Dimension
data modify storage deeper_dark:temp_checkpoint compass.tp.x set from entity @s Pos[0]
data modify storage deeper_dark:temp_checkpoint compass.tp.y set from entity @s Pos[1]
data modify storage deeper_dark:temp_checkpoint compass.tp.z set from entity @s Pos[2]

execute if items entity @s weapon.offhand compass run data modify storage deeper_dark:temp_checkpoint compass.tp.dimension set from entity @s Inventory[{Slot:-106b}].components.minecraft:lodestone_tracker.target.dimension
execute if items entity @s weapon.offhand compass run data modify storage deeper_dark:temp_checkpoint compass.tp.x set from entity @s Inventory[{Slot:-106b}].components.minecraft:lodestone_tracker.target.pos[0]
execute if items entity @s weapon.offhand compass run data modify storage deeper_dark:temp_checkpoint compass.tp.y set from entity @s Inventory[{Slot:-106b}].components.minecraft:lodestone_tracker.target.pos[1]
execute if items entity @s weapon.offhand compass run data modify storage deeper_dark:temp_checkpoint compass.tp.z set from entity @s Inventory[{Slot:-106b}].components.minecraft:lodestone_tracker.target.pos[2]

function deeper_dark:checkpoints/adjust_height

data remove storage deeper_dark:temp_checkpoint compass.tp