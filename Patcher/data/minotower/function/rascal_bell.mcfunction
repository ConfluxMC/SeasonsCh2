execute as @n[type=ocelot,tag=rascal_ocelot,distance=..32] at @s run function minotower:rascal_bell_effect

scoreboard players set @s minotower.bell_active_countdown 200
advancement revoke @s only minotower:use_rascal_bell

advancement grant @s only minotower:visible/bell_use rascal