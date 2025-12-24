scoreboard players add @s single_pale_sapling.fail_counter 1
setblock ~ ~ ~ minecraft:pale_oak_sapling[stage=1]
particle minecraft:falling_dust{block_state:pale_oak_sapling} ~ ~2 ~ 0.3 0.3 0.3 0 1
execute if score @s single_pale_sapling.fail_counter >= .max_fails single_pale_sapling.fail_counter run function cavernous:hollow_earth/single_pale_sapling/quit_growth