execute at @e[type=minecraft:area_effect_cloud,predicate=cn:iscloud] anchored eyes positioned ~ ~1000 ~ summon end_crystal run damage @s 0
scoreboard players remove @s cn_move_power 1
execute if score @s cn_move_power matches 1.. run function cn:player/power