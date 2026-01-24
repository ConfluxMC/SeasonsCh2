particle minecraft:instant_effect{color:[90,0,0]} ~ ~2 ~ 0.4 0.2 0.4 0.9 25
playsound minecraft:entity.warden.death hostile @a ~ ~ ~ 1 1.75
$damage @s $(damage) magic by @n[tag=war_bell.wardenblight_current]
#effect give @s instant_damage 1 3