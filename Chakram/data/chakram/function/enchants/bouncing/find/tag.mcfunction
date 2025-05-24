execute if entity @s[predicate=chakram:invisible,tag=!targetdummy.entity]
execute if entity @s[type=minecraft:player] unless entity @s[gamemode=!creative,gamemode=!spectator] run return fail
tag @s add chakram_bounce_candidate