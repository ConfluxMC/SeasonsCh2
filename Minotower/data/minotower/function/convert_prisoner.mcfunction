tag @s add converted_minotower_prisoner

# If sculkified minotaur or construct, equip horns here. Assume all other properties are already taken care of
loot replace entity @s[type=zombified_piglin] armor.head loot minotower:horns/sculkified
loot replace entity @s[type=piglin_brute] armor.head loot minotower:horns/construct
data modify entity @s[type=#minotower:piglin] drop_chances set value {head:0.0f}


# Make sure prisoners do not have any weapons
item replace entity @s weapon.mainhand with air
item replace entity @s weapon.offhand with air