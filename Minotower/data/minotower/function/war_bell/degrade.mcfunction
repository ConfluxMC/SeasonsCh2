execute if predicate minotower:war_bell/holding_offhand run function minotower:war_bell/degrade_offhand
execute if predicate minotower:war_bell/holding_mainhand run function minotower:war_bell/degrade_mainhand
scoreboard players reset @s minotower.war_bell_hit_full_charge
scoreboard players set @s minotower.war_bell_active_countdown 15
# If bell has revitalizing, increase countdown add 2.75 seconds to countdown
execute if items entity @s weapon.offhand goat_horn[enchantments~[{enchantments:"minotower:revitalizing"}]] run scoreboard players add @s minotower.war_bell_active_countdown 45