#we have hit the owner, pickup on next tick
execute if score @s chakram_bounces matches 1.. run return run tag @s add chakram_pickup
execute if entity @s[tag=chakram_return] run return run tag @s add chakram_pickup