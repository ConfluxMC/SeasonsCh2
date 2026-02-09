schedule function minotower:loop_5s 5s

execute as @e[type=#minotower:prisoner,tag=minotower_prisoner,tag=!converted_minotower_prisoner] run function minotower:convert_prisoner
execute as @e[type=piglin,predicate=minotower:bartering_bell_template] at @s run function minotower:barter_bell_template