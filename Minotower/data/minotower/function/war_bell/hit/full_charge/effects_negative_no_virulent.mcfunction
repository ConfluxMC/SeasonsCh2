execute if items entity @s armor.chest #minecraft:chest_armor[enchantments~[{enchantments:"minotower:resolute"}]] run return run function minotower:war_bell/resolute_feedback

effect give @s minecraft:weakness 5 0
effect give @s minecraft:blindness 2 0
effect give @s minecraft:wither 2 1
effect give @s minecraft:glowing 5 0

#say base virulence received