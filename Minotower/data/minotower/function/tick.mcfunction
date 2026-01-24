execute as @e[type=#minotower:piglin,tag=!converted] run function minotower:convert_piglin_to_minotaur

### WAR BELL
execute as @a[scores={minotower.war_bell=1..}] at @s run function minotower:war_bell/timing
execute as @a[scores={minotower.war_bell_active_countdown=1..}] run scoreboard players remove @s minotower.war_bell_active_countdown 1
execute as @a[predicate=minotower:war_bell/degrade] at @s run function minotower:war_bell/degrade