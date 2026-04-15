# Apply invisibility
summon splash_potion ~ ~ ~ {Item:{id:splash_potion,components:{potion_contents:{custom_color:13158600,custom_effects:[{id:invisibility,duration:40,show_particles:0b,show_icon:0b},{id:speed,duration:400,show_particles:0b,show_icon:0b}]}}}}

# Tag to indicate to not apply invisibility again
tag @s add rascal_is_invis
tag @s remove rascal_can_be_caught

# Remove rascal cosmetics to be invisible
data modify entity @s equipment set value {}

particle minecraft:dust_color_transition{from_color:[0.0,0.0,0.0],to_color:[0.0,0.4,0.5],scale:3} ~ ~1 ~ 0.5 0.5 0.5 0 30
playsound rascal:entity.rascal.hide neutral @a ~ ~ ~ 2

scoreboard players add @s rascal_times_found 1

# If found 3 times (including initial discovery), give gift
execute as @s[scores={rascal_times_found=3..}] run return run function rascal:give_gift

# If not final, play mischief sound, then teleport behind player and facing away
playsound rascal:entity.rascal.laugh neutral @a ~ ~ ~
execute at @n[type=player,predicate=rascal:eligible_finder] if block ^ ^ ^-0.5 #rascal:rascal_safe_tp_destinations run tp @n[type=ocelot,tag=rascal_ocelot,predicate=rascal:rascal_id] ^ ^ ^-0.3 ~180 ~