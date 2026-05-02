execute as @s[scores={minotower.war_bell=15}] run playsound minotower:item.war_bell player @s ~ ~ ~ 1 1.55
execute as @s[scores={minotower.war_bell=15}] run particle minecraft:ominous_spawning ^ ^1 ^1.5 1 0 1 0 60

execute as @s[predicate=minotower:war_bell/failed_hit] run function minotower:war_bell/hit/fail
scoreboard players remove @s minotower.war_bell 1