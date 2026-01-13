# Trail particles from the targetted player to the creaking's heart
execute store result storage cavernous:hollow_earth creaking.x float 1 run data get entity @s home_pos[0]
execute store result storage cavernous:hollow_earth creaking.y float 1 run data get entity @s home_pos[1]
execute store result storage cavernous:hollow_earth creaking.z float 1 run data get entity @s home_pos[2]

execute on target at @s run function cavernous:hollow_earth/marble_skeleton/creaking_player3 with storage cavernous:hollow_earth creaking

execute at @s[predicate=cavernous:marble_skeleton/creaking_make_sound] on target run playsound minecraft:block.creaking_heart.idle hostile @s ~ ~ ~ 0.3 0

# The creaking slowly approaches its target, until within 4 blocks where it sprints and gains strength
effect give @s[distance=4..10] minecraft:slowness 1 4 true
effect give @s[distance=..4] minecraft:strength 1 2 true
effect clear @s[distance=..4] minecraft:slowness