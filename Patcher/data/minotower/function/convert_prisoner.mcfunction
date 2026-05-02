tag @s add converted_minotower_prisoner

# If sculkified minotaur or construct, equip horns here. Assume all other properties are already taken care of
execute as @s[type=zombified_piglin] run loot replace entity @s armor.head loot minotower:horns/sculkified
execute as @s[type=piglin_brute] run loot replace entity @s armor.head loot minotower:horns/construct

# If skeleton, chance to be converted to marble skeleton or veil guard
execute as @s[type=skeleton,predicate=minotower:prisoner_marble_skeleton] run function cavernous:mob_conversion/marble_skeleton_convert
execute as @s[type=skeleton,tag=!marble_skeleton,predicate=minotower:prisoner_veil_guard] run function cavernous:secrets/mobs/guard/convert


# Make sure prisoners do not have any weapons
item replace entity @s weapon.mainhand with air
item replace entity @s weapon.offhand with air