tag @s add converted
#execute unless predicate minotower:in_minotower run return fail

tag @s add minotaur


### Set Equipment

# Minotaurs. Only reassign weapon if already holding a weapon
execute as @s[type=piglin] if items entity @s weapon.mainhand * run loot replace entity @s weapon.mainhand loot minotower:minotaur_weapons

# Constructs. Should not sculkify. 
data modify entity @s[type=piglin_brute] IsImmuneToZombification set value 1b
execute as @s[type=piglin_brute] run loot replace entity @s weapon.mainhand loot minotower:minotaur_construct_weapons


# Sculkified Minotaurs
execute as @s[type=zombified_piglin] if items entity @s weapon.mainhand * run loot replace entity @s weapon.mainhand loot minotower:sculkified_minotaur_weapons
execute as @s[type=zombified_piglin] run loot replace entity @s weapon.offhand loot minotower:sculkified_minotaur_offhand
execute as @s[type=zombified_piglin] run loot replace entity @s armor.feet loot minotower:sculkified_minotaur_boots

execute as @s[type=piglin] if predicate minotower:bell_crafter_chance run return run function minotower:convert_to_bell_crafter

# Set horns
execute as @s[type=piglin] run loot replace entity @s armor.head loot minotower:horns/default
execute as @s[type=zombified_piglin] run loot replace entity @s armor.head loot minotower:horns/sculkified
execute as @s[type=piglin_brute] run loot replace entity @s armor.head loot minotower:horns/construct

attribute @s minecraft:scale base set 1.4