execute as @e[type=#minotower:piglin,tag=!converted] run function minotower:convert_piglin_to_minotaur

execute as @e[type=item,predicate=minotower:remove_weapon_trim] at @s run function minotower:remove_weapon_trim

### WAR BELL
execute as @a[scores={minotower.war_bell=1..}] at @s run function minotower:war_bell/timing
execute as @a[scores={minotower.war_bell_active_countdown=1..}] run scoreboard players remove @s minotower.war_bell_active_countdown 1
execute as @a[predicate=minotower:war_bell/degrade] at @s run function minotower:war_bell/degrade
execute as @e[type=#minotower:affected_by_war_bell,scores={minotower.war_bell_vindictive_countdown=1..}] at @s run function minotower:war_bell/vindictive_tick

### Other Bells
execute as @a[scores={minotower.breeze_bell_active_countdown=1..}] run scoreboard players remove @s minotower.breeze_bell_active_countdown 1
execute as @a[scores={minotower.amethyst_bell_active_countdown=1..}] run scoreboard players remove @s minotower.amethyst_bell_active_countdown 1