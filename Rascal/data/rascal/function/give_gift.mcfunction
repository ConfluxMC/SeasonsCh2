# Give gift
loot spawn ~ ~0.8 ~ loot rascal:rascal_gifts
scoreboard players reset @s rascal_times_found

# Play final sound
playsound minecraft:entity.witch.ambient neutral @a ~ ~ ~ 1 2

# Then despawn
execute as @n[type=ocelot,tag=rascal_ocelot,distance=..1] run function rascal:despawn