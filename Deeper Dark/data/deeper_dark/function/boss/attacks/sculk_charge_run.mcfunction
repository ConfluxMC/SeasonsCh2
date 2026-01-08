tp @s ^ ^ ^0.5
particle minecraft:sculk_charge_pop ~ ~ ~ 0 0 0 .01 1 force
playsound minecraft:block.sculk.hit hostile @a ~ ~ ~ 1 0
execute unless block ~ ~ ~ #minecraft:replaceable run tag @s[type=!player] add deeper_dark.silent_despawn


execute if block ~ ~ ~ minecraft:sculk_vein[down=true,east=false,north=false,south=false,up=false,waterlogged=false,west=false] unless entity @n[type=marker,tag=deeper_dark.tentacles,distance=0..12] unless entity @n[type=marker,tag=deeper_dark.boss,distance=0..8] run function deeper_dark:tentacle/spawn
execute if block ~ ~ ~ minecraft:sculk_vein[down=true,east=false,north=false,south=false,up=false,waterlogged=false,west=false] unless entity @n[type=marker,tag=deeper_dark.syphon,distance=0..4] unless entity @n[type=marker,tag=deeper_dark.boss,distance=0..8] run function deeper_dark:syphon/spawn

#var is if feature placement was successful
execute store success score @s deeper_dark.var run place feature deeper_dark:sculk_patch_boss
execute if score @s deeper_dark.var matches 1 run tag @s[type=!player] add deeper_dark.silent_despawn