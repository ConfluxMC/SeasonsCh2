# Give gift
loot spawn ~ ~1 ~ loot rascal:rascal_gifts
scoreboard players reset @s rascal_times_found

# Play final sound
playsound minecraft:entity.witch.ambient neutral @a ~ ~ ~ 1 2

# Then despawn
execute as @n[tag=rascal_ocelot,distance=..1] run function rascal:despawn