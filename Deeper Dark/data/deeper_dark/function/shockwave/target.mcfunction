execute as @s[gamemode=spectator] run return fail

stopsound @s music
playsound minecraft:entity.lightning_bolt.thunder hostile @a ~ ~ ~ 2 2
playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 2 0
execute as @s[gamemode=!creative] run effect give @s minecraft:blindness 3 1 true
execute as @s[gamemode=!creative] run effect give @s minecraft:darkness 10 0 true
execute store result storage deeper_dark:data damage int 1 run random value 10..25
function deeper_dark:shockwave/attack with storage deeper_dark:data