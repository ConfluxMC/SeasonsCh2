tag @s add converted
execute unless predicate minotower:in_minotower run return fail

attribute @s minecraft:scale base set 1.4

# Only reassign weapon if already holding a weapon (exclude babies and brutes)
execute as @s[type=piglin] if items entity @s weapon.mainhand * run loot replace entity @s weapon.mainhand loot minotower:minotaur_weapons