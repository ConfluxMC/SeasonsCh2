setblock ~ ~ ~ minecraft:air destroy
scoreboard players add @s chakram_harvest_count 1
execute if score @s chakram_harvest_count matches 30.. run advancement grant @p[gamemode=!spectator,predicate=chakram:idmatch] only chakram:visible/big_harvest