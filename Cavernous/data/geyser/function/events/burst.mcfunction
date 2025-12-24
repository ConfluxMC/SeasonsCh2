playsound minecraft:entity.player.splash.high_speed block @a ~ ~ ~ 0.5 1.3
particle minecraft:cloud ~ ~5 ~ 0.1 3 0.1 0.06 55 force @a

execute positioned ~ ~1.95 ~ as @e[type=!#geyser:can_place_block_on,distance=...7] run function geyser:geysered_start