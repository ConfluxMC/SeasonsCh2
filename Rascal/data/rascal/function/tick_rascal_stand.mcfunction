### - Keep the armor stand at the ocelot
teleport @s @n[type=ocelot,tag=rascal_ocelot,distance=..2]

### - Kill ocelot-less armor stands
execute unless entity @n[type=ocelot,tag=rascal_ocelot,distance=..2] run kill @s

# Found
execute as @s[tag=!rascal_is_invis,tag=rascal_can_be_caught] if entity @n[distance=1..4,type=minecraft:player,predicate=rascal:eligible_finder] run function rascal:found

# Invisibility timer
scoreboard players add @s[tag=rascal_is_invis] rascal_stay_invis_timer 1
execute as @s[scores={rascal_stay_invis_timer=400..}] run function rascal:exit_invis

# Cooldown between when the rascal stops being invisible and can be "caught" again
scoreboard players add @s[tag=!rascal_is_invis,tag=!rascal_can_be_caught] rascal_can_be_caught_cooldown 1

execute as @s[scores={rascal_can_be_caught_cooldown=300..}] run tag @s add rascal_can_be_caught
execute as @s[scores={rascal_can_be_caught_cooldown=300..}] run scoreboard players reset @s rascal_can_be_caught_cooldown


execute as @s[tag=!rascal_is_invis] run function rascal:move/moving