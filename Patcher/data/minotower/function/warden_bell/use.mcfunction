advancement revoke @s only minotower:use_warden_bell
scoreboard players add @s warden_bell_effect 1

# Remove this when the instrument gets a sound. this is just a placeholder (I think, maybe)
playsound minecraft:entity.creaking.twitch player @s ~ ~ ~ 0.4 0.5

execute as @e[type=warden,distance=..50] at @s run function minotower:warden_bell/daze_warden