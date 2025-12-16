advancement revoke @s only hollow_earth:pacify_wardens
scoreboard players add @s warden_pacifier_effect 1

playsound minecraft:entity.creaking.twitch player @s ~ ~ ~ 0.4 0.5

execute as @e[type=warden,distance=..50] at @s run function hollow_earth:warden_pacifier/daze_warden