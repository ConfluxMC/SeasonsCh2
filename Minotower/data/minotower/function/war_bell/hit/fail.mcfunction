particle ash ^ ^1 ^1.5 1 0 1 0 60

# If revitalizing, then only degrade, don't reset
execute if items entity @s weapon.offhand goat_horn[enchantments~[{enchantments:"minotower:revitalizing"}]] run return run function minotower:war_bell/hit/revitalizing_fail

# If Quick Charge is applied and full charge, punish for failing
execute if predicate minotower:war_bell/full_charge if items entity @s weapon.offhand goat_horn[enchantments~[{enchantments:"minecraft:quick_charge"}]] run function minotower:war_bell/hit/quick_charge_fail



# Reset War Bell
execute if predicate minotower:war_bell/holding_offhand run item modify entity @s weapon.offhand minotower:war_bell/reset
execute if predicate minotower:war_bell/holding_offhand run item modify entity @s weapon.offhand minotower:war_bell/apply_attributes

# Reset scores
scoreboard players reset @s minotower.war_bell
scoreboard players reset @s minotower.war_bell_active_countdown
scoreboard players reset @s minotower.war_bell_hit_full_charge


