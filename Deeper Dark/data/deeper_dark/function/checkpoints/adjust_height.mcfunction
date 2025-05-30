execute store result score deeper_dark.checkpoint.y deeper_dark.checkpoints run data get storage deeper_dark:temp_checkpoint compass.tp.y
scoreboard players operation deeper_dark.checkpoint.y deeper_dark.checkpoints += $2 deeper_dark.checkpoints
execute store result storage deeper_dark:temp_checkpoint compass.tp.y_adj int 1 run scoreboard players get deeper_dark.checkpoint.y deeper_dark.checkpoints

function deeper_dark:checkpoints/execute_tp with storage deeper_dark:temp_checkpoint compass.tp