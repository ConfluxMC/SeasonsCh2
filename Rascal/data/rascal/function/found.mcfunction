# Apply invisibility
summon splash_potion ~ ~ ~ {Item:{id:splash_potion,components:{potion_contents:{custom_color:13158600,custom_effects:[{id:invisibility,duration:40,show_particles:0b,show_icon:0b},{id:speed,duration:400,show_particles:0b,show_icon:0b}]}}}}

# Tag to indicate to not apply invisibility again
tag @s add rascal_is_invis
tag @s remove rascal_can_be_caught

# Remove rascal cosmetics to be invisible
data modify entity @s equipment set value {}

particle minecraft:dust_color_transition{from_color:[0.0,0.0,0.0],to_color:[0.0,0.4,0.5],scale:3} ~ ~1 ~ 0.5 0.5 0.5 0 30
playsound minecraft:entity.breeze.land master @a ~ ~ ~ 2 0.6

scoreboard players add @s rascal_times_found 1

# Times found is off by 1 due to initial encounter counting as a time found
# If found 3 times, give gift
execute as @s[scores={rascal_times_found=4..}] run return run function rascal:give_gift

# If not final, play mischief sound, then teleport behind player and facing away
tag @s add rascal_teleport_behind
tag @n[type=ocelot,tag=rascal_ocelot] add rascal_teleport_behind
playsound minecraft:entity.witch.celebrate neutral @a ~ ~ ~ 1 2
execute as @n[type=player,predicate=rascal:eligible_finder] at @s if block ^ ^ ^-0.5 #rascal:rascal_safe_tp_destinations run tp @e[tag=rascal_teleport_behind] ^ ^ ^-0.3 ~180 ~
tag @e[tag=rascal_teleport_behind] remove rascal_teleport_behind