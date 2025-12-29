#execute as @e[tag=rascal_can_be_caught,scores={rascal_can_be_caught_cooldown=..199}] run say failed caught
#execute as @e[tag=!rascal_is_invis,scores={rascal_stay_invis_timer=..400}] run say failed invis

# Cooldown between when the rascal stops being invisible and can be "caught" again
scoreboard players add @e[type=armor_stand,tag=rascal_stand,tag=!rascal_is_invis,tag=!rascal_can_be_caught] rascal_can_be_caught_cooldown 1

tag @e[type=armor_stand,tag=rascal_stand,scores={rascal_can_be_caught_cooldown=300..}] add rascal_can_be_caught
scoreboard players reset @e[type=armor_stand,tag=rascal_stand,scores={rascal_can_be_caught_cooldown=300..}] rascal_can_be_caught_cooldown

execute as @e[type=armor_stand,tag=rascal_stand,tag=!rascal_is_invis,tag=rascal_can_be_caught] at @s if entity @e[distance=1..4,type=minecraft:player,predicate=rascal:eligible_finder] run function rascal:found

scoreboard players add @e[type=armor_stand,tag=rascal_stand,tag=rascal_is_invis,tag=!rascal_can_be_caught] rascal_stay_invis_timer 1

execute as @e[type=armor_stand,tag=rascal_stand,scores={rascal_stay_invis_timer=400..}] at @s run function rascal:exit_invis


### - Keep the armor stand at the ocelot
execute at @e[type=ocelot,tag=rascal_ocelot] run teleport @n[type=armor_stand,tag=rascal_stand,distance=..2] @n[type=ocelot,tag=rascal_ocelot]

### - Kill ocelot-less armor stands
execute as @e[type=armor_stand,tag=rascal_stand] at @s unless entity @e[type=ocelot,tag=rascal_ocelot,distance=..2] run kill @s
### - Kill stand-less ocelots
execute as @e[type=ocelot,tag=rascal_ocelot] at @s unless entity @e[type=armor_stand,tag=rascal_stand,distance=..2] run kill @s

# Keep the ocelot distrusting so it runs away
execute as @e[type=ocelot,tag=rascal_ocelot,predicate=rascal:trusting] run data modify entity @s Trusting set value 0b

# Negate base speed debuff when sprinting
execute as @e[type=ocelot,tag=rascal_ocelot,predicate=rascal:is_sprinting] run attribute @s minecraft:movement_speed modifier add rascal_sprinting_speed_boost 0.1 add_value
execute as @e[type=ocelot,tag=rascal_ocelot,predicate=!rascal:is_sprinting] run attribute @s minecraft:movement_speed modifier remove rascal_sprinting_speed_boost

### Remove Obstacles if hiding
execute as @e[type=armor_stand,tag=rascal_stand,tag=!rascal_can_be_caught] at @s run function rascal:clear_obstacles

# Hop over rails (to bypass pathfinding being blocked by them)
execute as @e[type=ocelot,tag=rascal_ocelot] at @s if block ^ ^0.4 ^0.5 #minecraft:rails if block ^ ^0.4 ^1 #rascal:rascal_safe_tp_destinations run tp ^ ^0.4 ^0.5

# Exit vehicles
execute at @e[type=armor_stand,tag=rascal_stand,tag=!rascal_can_be_caught] as @n[type=ocelot,tag=rascal_ocelot] on vehicle run damage @s 0.5 minecraft:mob_attack_no_aggro

# Attack leashers
execute as @e[type=ocelot,tag=rascal_ocelot] on leasher run tag @s add rascal_leasher
execute as @e[type=ocelot,tag=rascal_ocelot,predicate=rascal:leashed] at @s run function rascal:leashed
kill @e[type=leash_knot,tag=rascal_leasher]
tag @e[tag=rascal_leasher] remove rascal_leasher

# Retaliate if hurt
execute as @e[type=ocelot,tag=rascal_ocelot,nbt={HurtTime:9s}] at @s run function rascal:hurt
execute as @e[type=ocelot,tag=rascal_ocelot,nbt={HurtTime:6s}] at @s run function rascal:throw_defense_potion

# Cure defense potion effects on self
execute as @e[type=ocelot,tag=rascal_ocelot,predicate=rascal:affected_by_defense_potion] at @s run function rascal:clear_defense_potion_effects


############ - Анимация ног (Leg Animations)

#Выдаёт армарстенду тги (Issues tgi to the armor stand???) (Tags given to the armor stand?)
#      rascal_moving     -Идёт (coming/ok) (is moving?)

### - Стоит (Not moving)
execute at @e[type=ocelot,tag=rascal_ocelot,predicate=rascal:not_moving] run function rascal:move/stop

### - Движется (Moving)
execute at @e[type=ocelot,tag=rascal_ocelot,predicate=!rascal:not_moving] run function rascal:move/start

execute as @e[type=armor_stand,tag=rascal_stand] at @s run function rascal:move/moving