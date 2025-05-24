scoreboard players set @s chakram_loot_raycast_hit 0
scoreboard players set @s chakram_loot_raycast_distance 0

#store reach
execute store result score @s chakram_loot_reach run attribute @s minecraft:block_interaction_range get 100

execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function chakram:loot/ray/ray