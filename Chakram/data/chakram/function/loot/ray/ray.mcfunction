execute if block ~ ~ ~ minecraft:chest align xyz positioned ~0.5 ~0.5 ~0.5 run function chakram:loot/ray/hit
scoreboard players add @s chakram_loot_raycast_distance 1

execute if score @s chakram_loot_raycast_hit matches 0 if score @s chakram_loot_raycast_distance < @s chakram_loot_reach positioned ^ ^ ^0.01 run function chakram:loot/ray/ray