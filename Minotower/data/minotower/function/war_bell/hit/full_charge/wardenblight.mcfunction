execute store result storage minotower:war_bell wardenblight.damage int 12 run data get entity @s equipment.offhand.components."minecraft:enchantments"."minotower:wardenblight"
execute store result storage minotower:war_bell wardenblight.heal int 0.5 run data get entity @s equipment.offhand.components."minecraft:enchantments"."minotower:wardenblight"
#execute store result storage minotower:war_bell wardenblight.x double 1 run data get entity @s Pos[0]
#execute store result storage minotower:war_bell wardenblight.y double 1 run data get entity @s Pos[1]
#execute store result storage minotower:war_bell wardenblight.z double 1 run data get entity @s Pos[2]

function minotower:war_bell/hit/full_charge/wardenblight_heal with storage minotower:war_bell wardenblight

tag @s add war_bell.wardenblight_current
execute at @n[type=warden,distance=..32] as @e[type=warden,distance=..32] at @s run function minotower:war_bell/hit/full_charge/wardenblight_warden
tag @s remove war_bell.wardenblight_current


scoreboard players reset @s minotower.war_bell_hit_full_charge