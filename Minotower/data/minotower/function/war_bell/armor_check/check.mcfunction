scoreboard players reset @s minotower.war_bell_armor_chest_id
scoreboard players reset @s minotower.war_bell_armor_head_id
scoreboard players reset @s minotower.war_bell_armor_legs_id
scoreboard players reset @s minotower.war_bell_armor_feet_id

# If chestplate has no trims, don't consider it at all
execute unless items entity @s armor.chest #minecraft:trimmable_armor[minecraft:trim~{}] run return fail



# Armor Id
# ATTPP = A Armor Material TT Trim Material PP Trim Pattern

# Chest
function minotower:war_bell/armor_check/chest/material
function minotower:war_bell/armor_check/chest/trim_material
function minotower:war_bell/armor_check/chest/trim_pattern

# Head
execute if items entity @s armor.head #minecraft:trimmable_armor[minecraft:trim~{}] run function minotower:war_bell/armor_check/head/check
# Legs
execute if items entity @s armor.legs #minecraft:trimmable_armor[minecraft:trim~{}] run function minotower:war_bell/armor_check/legs/check
# Feet
execute if items entity @s armor.feet #minecraft:trimmable_armor[minecraft:trim~{}] run function minotower:war_bell/armor_check/feet/check