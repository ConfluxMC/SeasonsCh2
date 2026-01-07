data modify storage deeper_dark:temp_checkpoint compass.tp.dimension set from entity @s Dimension
data modify storage deeper_dark:temp_checkpoint compass.tp.x set from entity @s Pos[0]
data modify storage deeper_dark:temp_checkpoint compass.tp.y set from entity @s Pos[1]
data modify storage deeper_dark:temp_checkpoint compass.tp.z set from entity @s Pos[2]

data modify storage deeper_dark:temp_checkpoint compass.tp.dimension set from entity @s LastDeathLocation.dimension
data modify storage deeper_dark:temp_checkpoint compass.tp.x set from entity @s LastDeathLocation.pos[0]
data modify storage deeper_dark:temp_checkpoint compass.tp.y set from entity @s LastDeathLocation.pos[1]
data modify storage deeper_dark:temp_checkpoint compass.tp.z set from entity @s LastDeathLocation.pos[2]

function deeper_dark:checkpoints/adjust_height

## Apply effects of returning to death location
# Take recovery compass
clear @s[gamemode=!spectator,gamemode=!creative] minecraft:recovery_compass 1

# Play resurrection effects
execute at @s run function deeper_dark:checkpoints/execute_recovery_compass_effects

# Clear compass data
data remove storage deeper_dark:temp_checkpoint compass.tp