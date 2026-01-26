execute as @s[scores={minotower.war_bell=20}] run playsound minotower:item.war_bell player @s ~ ~ ~ 1 1.55
execute as @s[scores={minotower.war_bell=20}] run particle minecraft:ominous_spawning ^ ^1 ^1.5 1 0 1 0 60

execute as @s[scores={minotower.war_bell=..1,minotower.war_bell_hit=0}] run function minotower:war_bell/hit/fail
scoreboard players remove @s minotower.war_bell 1