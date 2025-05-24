scoreboard players add @s chakram_distance 1
execute if block ~ ~ ~ #chakram:liquids run return run function chakram:entity/move_liquid
tp @s ^ ^ ^0.05
tag @s add chakram_in_air