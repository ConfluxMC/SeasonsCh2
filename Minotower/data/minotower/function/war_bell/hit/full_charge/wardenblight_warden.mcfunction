effect give @s glowing 20 0 true
effect give @s levitation 1 2 true
effect give @s slowness 4 3 true

# If virtuous, don't deal damage to wardens
execute unless items entity @n[tag=war_bell.wardenblight_current] weapon.offhand goat_horn[enchantments~[{enchantments:"minotower:virtuous"}]] run function minotower:war_bell/hit/full_charge/wardenblight_warden_damage with storage minotower:war_bell wardenblight