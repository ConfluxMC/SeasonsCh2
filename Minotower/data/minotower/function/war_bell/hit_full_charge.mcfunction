scoreboard players add @s minotower.war_bell_hit_full_charge 1
execute unless score @s minotower.war_bell_hit_full_charge matches 5.. run return fail

particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.6 30
playsound minotower:item.war_bell player @a ~ ~ ~ 1 0.6
playsound minotower:item.war_bell player @a ~ ~ ~ 1 0.2

function minotower:war_bell/hit_full_charge_effects_positive

# Check armor and trims to identify friend and foe. This check will also include self
execute as @e[type=#minotower:affected_by_war_bell,distance=..12] run function minotower:war_bell/armor_check/check

scoreboard players operation $current minotower.war_bell_armor_chest_id = @s minotower.war_bell_armor_chest_id
scoreboard players operation $current minotower.war_bell_armor_head_id = @s minotower.war_bell_armor_head_id
scoreboard players operation $current minotower.war_bell_armor_legs_id = @s minotower.war_bell_armor_legs_id
scoreboard players operation $current minotower.war_bell_armor_feet_id = @s minotower.war_bell_armor_feet_id

# Apply effects to applicable surrounding entities (Excluding self)
execute as @e[type=#minotower:affected_by_war_bell,distance=..12,predicate=minotower:war_bell/armor_ally] unless score @s minotower.war_bell_hit_full_charge matches 5.. run function minotower:war_bell/hit_full_charge_effects_positive
execute as @e[type=#minotower:affected_by_war_bell,distance=..12,predicate=!minotower:war_bell/armor_ally] unless score @s minotower.war_bell_hit_full_charge matches 5.. run function minotower:war_bell/hit_full_charge_effects_negative


scoreboard players reset @s minotower.war_bell_hit_full_charge