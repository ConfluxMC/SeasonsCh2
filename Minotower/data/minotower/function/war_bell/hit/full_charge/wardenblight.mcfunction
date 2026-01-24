effect give @s instant_health 1 2
effect give @s absorption 15 2

tag @s add war_bell.wardenblight_current
execute at @n[type=warden,distance=..32] as @e[type=warden,distance=..32] at @s run function minotower:war_bell/hit/full_charge/wardenblight_warden
tag @s remove war_bell.wardenblight_current


scoreboard players reset @s minotower.war_bell_hit_full_charge