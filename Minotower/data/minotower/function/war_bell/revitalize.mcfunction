advancement revoke @s only minotower:war_bell/revitalize
# Give allies boons
execute as @e[type=#minotower:affected_by_war_bell,distance=0.1..12,predicate=minotower:war_bell/armor_ally] run function minotower:war_bell/hit/full_charge/effects_revitalize_ally

#say revitalized!

execute unless items entity @s weapon.offhand * run return run loot replace entity @s weapon.offhand loot minotower:bell/war_bell
loot give @s loot minotower:bell/war_bell