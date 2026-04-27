# If no rascals around, try to spawn one
execute unless entity @n[type=ocelot,tag=rascal_ocelot,distance=..48] run execute as @e[type=#rascal:rascal_spawnpoints,predicate=rascal:in_spawnable_structure,sort=random,limit=1,distance=..48] at @s unless entity @e[type=ocelot,tag=rascal_ocelot,distance=..48] run function rascal:summon

execute as @n[type=ocelot,tag=rascal_ocelot,distance=..48] at @s run function minotower:rascal_bell_effect


scoreboard players set @s minotower.bell_active_countdown 200
advancement revoke @s only minotower:use_rascal_bell

advancement grant @s only minotower:visible/bell_use rascal