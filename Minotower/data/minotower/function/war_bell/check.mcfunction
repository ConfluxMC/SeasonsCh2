# Make sure minotower.war_bell matches use time of the war bell instrument
scoreboard players set @s minotower.war_bell 40
scoreboard players set @s minotower.war_bell_hit 0

advancement revoke @s only minotower:war_bell/use

advancement grant @s only minotower:visible/bell_use war