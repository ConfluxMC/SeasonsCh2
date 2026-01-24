scoreboard players add @s minotower.war_bell_hit_full_charge 1
execute if items entity @s weapon.offhand goat_horn[enchantments~[{enchantments:"minotower:virtuous"}]] run scoreboard players add @s minotower.war_bell_hit_full_charge 2
execute unless score @s minotower.war_bell_hit_full_charge matches 5.. run return run function minotower:war_bell/hit/feedback

particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.6 30
playsound minotower:item.war_bell player @a ~ ~ ~ 1 0.6
playsound minotower:item.war_bell player @a ~ ~ ~ 1 0.2

# If wardenblight, don't bother with rest of function
execute if items entity @s weapon.offhand goat_horn[enchantments~[{enchantments:"minotower:wardenblight"}]] run return run function minotower:war_bell/hit/full_charge/wardenblight

function minotower:war_bell/hit/full_charge/effects_positive_self

# Check armor and trims to identify friend and foe. This check will also include self
execute as @e[type=#minotower:affected_by_war_bell,distance=..12] run function minotower:war_bell/armor_check/check

scoreboard players operation $current minotower.war_bell_armor_chest_id = @s minotower.war_bell_armor_chest_id
scoreboard players operation $current minotower.war_bell_armor_head_id = @s minotower.war_bell_armor_head_id
scoreboard players operation $current minotower.war_bell_armor_legs_id = @s minotower.war_bell_armor_legs_id
scoreboard players operation $current minotower.war_bell_armor_feet_id = @s minotower.war_bell_armor_feet_id

# Cleanse if applicable
execute if items entity @s weapon.offhand goat_horn[enchantments~[{enchantments:"minotower:cleansing"}]] as @e[type=#minotower:affected_by_war_bell,distance=..12,predicate=minotower:war_bell/armor_ally] run function minotower:war_bell/hit/full_charge/cleanse

# Vindictive if applicable. Apply for 10 seconds
execute if items entity @s weapon.offhand goat_horn[enchantments~[{enchantments:"minotower:vindictive"}]] as @e[type=#minotower:affected_by_war_bell,distance=..12,predicate=minotower:war_bell/armor_ally] unless score @s minotower.war_bell_hit_full_charge matches 5.. at @s run function minotower:war_bell/hit/full_charge/vindictive_mark

# Apply effects to applicable surrounding entities (Excluding self). Don't apply negative effects if Virtuous.
function minotower:war_bell/hit/full_charge/effects_positive_select
execute unless items entity @s weapon.offhand goat_horn[enchantments~[{enchantments:"minotower:virtuous"}]] run function minotower:war_bell/hit/full_charge/effects_negative_select


scoreboard players reset @s minotower.war_bell_hit_full_charge