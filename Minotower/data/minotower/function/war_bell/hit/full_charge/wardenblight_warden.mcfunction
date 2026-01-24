effect give @s glowing 20 0 true
effect give @s levitation 1 2 true
effect give @s slowness 4 3 true

# If virtuous, don't deal damage to wardens
execute if items entity @n[tag=war_bell.wardenblight_current] weapon.offhand goat_horn[enchantments~[{enchantments:"minotower:virtuous"}]] run return 0
effect give @s instant_damage 1 3
particle minecraft:instant_effect{color:[90,0,0]} ~ ~2 ~ 0.4 0.2 0.4 0.9 25
playsound minecraft:entity.warden.death hostile @a ~ ~ ~ 1 1.75