execute as @s positioned 0.0 0 0.0 run summon marker ^ ^ ^2 {Tags:["webslinger_direction"]}

execute as @s at @s run summon falling_block ^ ^0.5 ^0.3 {BlockState:{Name:cobweb},Tags:["webslinger_web"]}
data modify entity @n[type=minecraft:falling_block,tag=webslinger_web] Motion set from entity @n[type=marker,tag=webslinger_direction] Pos

kill @n[type=marker,tag=webslinger_direction]

tag @s add webslinger_slung
scoreboard players add @s webslinger_cooldown 0