execute if entity @s[tag=chakram_in_air] run playsound minecraft:entity.generic.splash master @a ~ ~ ~ 0.3 1
execute if entity @s[tag=chakram_in_air] run particle minecraft:splash ~ ~ ~ 0.35 0.35 0.35 0.5 10 force
tag @s remove chakram_in_air
particle minecraft:bubble ~ ~ ~ 0.05 0.05 0.05 0 1 force