execute positioned ^ ^ ^0.05 if block ~ ~ ~ minecraft:target run return run function chakram:entity/bounce/hit_target

tag @s add chakram_bounce
scoreboard players add @s chakram_bounces 1
playsound minecraft:item.shield.break master @a ~ ~ ~ 0.1 2
execute unless block ~0.251 ~ ~ #chakram:blocks store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
execute unless block ~-0.251 ~ ~ #chakram:blocks store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
execute unless block ~ ~0.251 ~ #chakram:blocks store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute unless block ~ ~-0.251 ~ #chakram:blocks store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute unless block ~ ~ ~0.251 #chakram:blocks run function chakram:entity/bounce/zplane
execute unless block ~ ~ ~-0.251 #chakram:blocks run function chakram:entity/bounce/zplane