### - Kill stand-less ocelots
execute unless entity @n[type=armor_stand,tag=rascal_stand,distance=..2] run kill @s


# Keep the ocelot distrusting so it runs away
execute as @s[predicate=rascal:trusting] run data modify entity @s Trusting set value 0b

# Negate base speed debuff when sprinting
execute as @s[predicate=rascal:is_sprinting,predicate=!rascal:has_speed_modifier] run attribute @s minecraft:movement_speed modifier add rascal_sprinting_speed_boost 0.15 add_value
execute as @s[predicate=!rascal:is_sprinting,predicate=rascal:has_speed_modifier] run attribute @s minecraft:movement_speed modifier remove rascal_sprinting_speed_boost

# Hop over rails (to bypass pathfinding being blocked by them)
execute if block ^ ^0.4 ^0.5 #minecraft:rails if block ^ ^0.4 ^1 #rascal:rascal_safe_tp_destinations run tp ^ ^0.4 ^0.5

# Remove Obstacles if hiding
execute if entity @n[type=armor_stand,tag=rascal_stand,tag=!rascal_can_be_caught] run function rascal:clear_obstacles
# Exit vehicles
execute if entity @n[type=armor_stand,tag=rascal_stand,tag=!rascal_can_be_caught] on vehicle run damage @s 0.5 minecraft:mob_attack_no_aggro

# Attack leashers
execute on leasher run tag @s add rascal_leasher
execute as @s[predicate=rascal:leashed] run function rascal:leashed
kill @n[type=leash_knot,tag=rascal_leasher,distance=..5]
execute as @e[tag=rascal_leasher] run tag @s remove rascal_leasher

# Retaliate if hurt
execute as @s[nbt={HurtTime:9s}] run function rascal:hurt
execute as @s[nbt={HurtTime:6s}] run function rascal:throw_defense_potion

# Cure defense potion effects on self
execute as @s[predicate=rascal:affected_by_defense_potion] run function rascal:clear_defense_potion_effects


# Not Moving
execute as @s[predicate=rascal:not_moving] run return run tag @n[distance=..0.5,type=armor_stand,tag=rascal_stand,tag=rascal_moving] remove rascal_moving

# Moving
tag @n[distance=..0.5,type=armor_stand,tag=rascal_stand,tag=!rascal_moving] add rascal_moving