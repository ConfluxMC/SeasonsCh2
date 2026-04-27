scoreboard players add @s minotower.war_bell_hit_full_charge 1
execute if items entity @s weapon.offhand goat_horn[enchantments~[{enchantments:"minotower:virtuous"}]] run scoreboard players add @s minotower.war_bell_hit_full_charge 1
execute if items entity @s weapon.offhand goat_horn[enchantments~[{enchantments:"minotower:rigor"}]] run scoreboard players add @s minotower.war_bell_hit_full_charge 5
execute unless score @s minotower.war_bell_hit_full_charge matches 5.. run return run function minotower:war_bell/hit/feedback

function minotower:war_bell/hit/full_charge/blast