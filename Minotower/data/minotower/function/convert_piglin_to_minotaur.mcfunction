tag @s add converted
execute unless predicate minotower:in_minotower run return fail

tag @s add minotaur

# Only reassign weapon if already holding a weapon (exclude brutes)
execute as @s[type=piglin] if items entity @s weapon.mainhand * run loot replace entity @s weapon.mainhand loot minotower:minotaur_weapons


execute if predicate minotower:bell_crafter_chance run return run function minotower:convert_to_bell_crafter

attribute @s minecraft:scale base set 1.4