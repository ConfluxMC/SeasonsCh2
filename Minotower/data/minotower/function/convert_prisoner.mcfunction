tag @s add converted_minotower_prisoner

# If sculkified minotaur or construct, equip horns here. Assume all other properties are already taken care of
execute as @s[type=zombified_piglin] run loot replace entity @s armor.head loot minotower:horns/sculkified
execute as @s[type=piglin_brute] run loot replace entity @s armor.head loot minotower:horns/construct


# Make sure prisoners do not have any weapons
item replace entity @s weapon.mainhand with air
item replace entity @s weapon.offhand with air