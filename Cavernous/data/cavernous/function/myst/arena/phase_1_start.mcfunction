execute positioned ~5 ~ ~ run function cavernous:myst/arena/summon_priest_1
playsound minecraft:block.end_portal.spawn ui @a ~ ~ ~ 0.8 2
particle dust{color:[0.443, 0.055, 0.055],scale:4} ~ ~1.5 ~ 1.7 1.7 1.7 0.2 200 normal @a
title @a[distance=..50] subtitle {"text":"PRISONER OF THE MYST","bold":true,"color":"yellow"}
title @a[distance=..50] title {"text":"HIGH PRIEST VERIDIAN","bold":true,"color":"red"}

# Prevent overlapping tracks if players repeatedly fight
execute as @n[type=marker,tag=return_portal] at @s run stopsound @a[distance=..50] record minecraft:music_disc.ward
execute as @n[type=marker,tag=return_portal] at @s run playsound minecraft:music_disc.ward record @a ~ ~ ~ 3 1.85

advancement grant @a[distance=..500] only cavernous:expansion/myst/priest_summon


scoreboard players set @n[type=marker,tag=return_portal] return_portal.active 0