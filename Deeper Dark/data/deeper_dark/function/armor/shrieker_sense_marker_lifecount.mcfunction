scoreboard players add @s deeper_dark.shrieker_sense_marker_duration 1
execute unless block ~ ~ ~ sculk_shrieker run return run tag @s add deeper_dark.silent_despawn
execute if score @s deeper_dark.shrieker_sense_marker_duration matches 4800.. run tag @s add deeper_dark.silent_despawn