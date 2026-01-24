execute if items entity @s armor.chest #minecraft:chest_armor[enchantments~[{enchantments:"minotower:resolute"}]] run return run function minotower:war_bell/hit/full_charge/effects_negative_virulent_2_resolute

effect give @s minecraft:weakness 8 1
effect give @s minecraft:blindness 6 0
effect give @s minecraft:wither 6 1
effect give @s minecraft:glowing 8 0

#say virulent 2