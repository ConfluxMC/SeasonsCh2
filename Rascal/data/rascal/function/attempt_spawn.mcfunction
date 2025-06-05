#Try to spawn in a valid structure at a valid entity that is not within 64 blocks of another rascal
execute as @e[predicate=rascal:in_spawnable_structure,type=#rascal:rascal_spawnpoints,sort=random] run execute at @s unless entity @e[tag=rascal_ocelot,distance=..128] if predicate rascal:spawn_chance run function rascal:summon

schedule function rascal:attempt_spawn 300s