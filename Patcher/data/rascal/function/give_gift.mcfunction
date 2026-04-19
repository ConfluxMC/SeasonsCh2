# Give gift
loot spawn ~ ~0.8 ~ loot rascal:rascal_gifts

# Play final sound
playsound rascal:entity.rascal.ambient neutral @a ~ ~ ~

# Then despawn
execute as @n[type=ocelot,tag=rascal_ocelot,predicate=rascal:rascal_id] run function rascal:despawn
function rascal:despawn

advancement grant @a[distance=..5] only rascal:win