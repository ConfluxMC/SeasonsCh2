playsound minecraft:entity.player.splash.high_speed block @a ~ ~ ~ 0.5 1.3
particle minecraft:cloud ~ ~3 ~ 0.1 3 0.1 0.06 55 force @a

execute if predicate geyser:under_snow run advancement grant @a[distance=..8] only cavernous:geyser_snow
execute if predicate geyser:under_snow run setblock ~ ~ ~ minecraft:powder_snow replace
execute as @e[type=!#geyser:canot_be_geysered,distance=...7] at @s run function geyser:geysered_start