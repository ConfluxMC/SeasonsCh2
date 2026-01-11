execute store result storage cavernous:hollow_earth creaking.x float 1 run data get entity @n[type=creaking] home_pos[0]
execute store result storage cavernous:hollow_earth creaking.y float 1 run data get entity @n[type=creaking] home_pos[1]
execute store result storage cavernous:hollow_earth creaking.z float 1 run data get entity @n[type=creaking] home_pos[2]

effect give @e[type=creaking,distance=..10] minecraft:slowness 1 4 true
effect give @e[type=creaking,distance=..10] minecraft:strength 1 2 true
execute at @e[type=creaking,distance=..10] run playsound minecraft:block.creaking_heart.idle hostile @s ~ ~ ~ 0.3 0

function cavernous:hollow_earth/marble_skeleton/creaking_player2 with storage cavernous:hollow_earth creaking