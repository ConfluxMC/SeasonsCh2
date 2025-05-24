scoreboard players operation $chakram_temp chakram_id = @s chakram_id
execute facing entity @p[distance=..100,gamemode=!spectator,predicate=chakram:idmatch] eyes run return run tp @s ~ ~ ~ ~ ~

#no player found, drop item
execute if entity @s[tag=chakram_creative] run return run kill @s

data modify storage chakram:spawn item set from entity @s item
execute at @s run function chakram:item/spawn with storage chakram:spawn