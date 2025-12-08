# Apply invisibility
summon splash_potion ~ ~ ~ {Item:{id:splash_potion,components:{potion_contents:{custom_color:13158600,custom_effects:[{id:invisibility,duration:400,show_particles:0b,show_icon:0b},{id:speed,duration:400,show_particles:0b,show_icon:0b}]}}}}

# Tag to indicate to not apply invisibility again
tag @s add rascal_is_invis
tag @s remove rascal_can_be_caught

execute at @s run particle minecraft:dust_color_transition{from_color:[0.0,0.0,0.0],to_color:[0.0,0.4,0.5],scale:3} ~ ~1 ~ 0.5 0.5 0.5 0 30
execute at @s run playsound minecraft:entity.breeze.land master @a ~ ~ ~ 2 0.6

scoreboard players add @s rascal_times_found 1

# Times found is off by 1 due to initial encounter counting as a time found
# If not final, play mischief sound, then teleport behind player and facing away
execute as @s[scores={rascal_times_found=..3}] run tag @s add rascal_teleport_behind
execute as @s[tag=rascal_teleport_behind] run tag @n[tag=rascal_ocelot] add rascal_teleport_behind
execute as @s[tag=rascal_teleport_behind] run playsound minecraft:entity.witch.celebrate neutral @a ~ ~ ~ 1 2
execute as @s[tag=rascal_teleport_behind] run execute as @n[type=player] at @s run execute if block ^ ^ ^-0.5 #rascal:rascal_safe_tp_destinations run tp @e[tag=rascal_teleport_behind] ^ ^ ^-0.3 ~180 ~
tag @e[tag=rascal_teleport_behind] remove rascal_teleport_behind

# If found 3 times, give gift
execute as @s[scores={rascal_times_found=4..}] run function rascal:give_gift