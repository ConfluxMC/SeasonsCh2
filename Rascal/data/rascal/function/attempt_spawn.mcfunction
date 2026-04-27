#Try to spawn in a valid structure at a valid entity that is not within 216 blocks of another rascal
execute as @e[type=#rascal:rascal_spawnpoints,predicate=rascal:in_spawnable_structure,sort=random] at @s unless entity @e[type=ocelot,tag=rascal_ocelot,distance=..216] if predicate rascal:spawn_chance run function rascal:summon

schedule function rascal:attempt_spawn 300s