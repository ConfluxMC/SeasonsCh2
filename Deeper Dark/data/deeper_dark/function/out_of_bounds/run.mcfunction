# Cancel if @s is spectating player
execute as @s[type=player,gamemode=spectator] run return fail

execute as @s[type=player,scores={deeper_dark.outofbounds=600..}] if block ~ ~2 ~ minecraft:bedrock run function deeper_dark:out_of_bounds/player
execute as @s[scores={deeper_dark.outofbounds=600..}] if block ~ ~2 ~ minecraft:bedrock run spreadplayers ~ ~ 0 1 under 62 false @s

scoreboard players add @s deeper_dark.outofbounds 1

execute as @s[type=player,scores={deeper_dark.outofbounds=200..}] run playsound minecraft:ambient.soul_sand_valley.mood ambient @s ~ ~ ~ .1 0 1
execute as @s[type=player,scores={deeper_dark.outofbounds=400..}] run playsound minecraft:ambient.soul_sand_valley.mood ambient @s ~ ~ ~ .2 1 1
execute as @s[type=player,scores={deeper_dark.outofbounds=600..}] run playsound minecraft:ambient.soul_sand_valley.mood ambient @s ~ ~ ~ .3 2 1
execute as @s[scores={deeper_dark.outofbounds=600..},predicate=deeper_dark:on_ground] run tp @s ~ ~-0.0001 ~
execute as @s[type=player,scores={deeper_dark.outofbounds=800..}] run playsound minecraft:ambient.soul_sand_valley.mood ambient @s ~ ~ ~ 1 2 1
execute as @s[type=player,scores={deeper_dark.outofbounds=800..},gamemode=!creative] run damage @s 2 minecraft:out_of_world
execute as @s[type=!player,scores={deeper_dark.outofbounds=800..}] run damage @s 2 minecraft:out_of_world