execute as @e[type=#minotower:piglin,tag=!converted] run function minotower:convert_piglin_to_minotaur

execute as @a[scores={minotower.war_bell=1..}] at @s run function minotower:war_bell/timing
execute as @a[scores={minotower.war_bell_active_countdown=1..}] at @s run function minotower:war_bell/check_degrade