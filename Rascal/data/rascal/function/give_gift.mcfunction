# Give gift
loot spawn ~ ~0.8 ~ loot rascal:rascal_gifts
scoreboard players reset @s rascal_times_found

# Play final sound
playsound rascal:entity.rascal.ambient neutral @a ~ ~ ~

# Then despawn
execute as @n[type=ocelot,tag=rascal_ocelot,predicate=rascal:rascal_id] run function rascal:despawn