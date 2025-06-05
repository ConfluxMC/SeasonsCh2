# Apply invisibility
summon potion ~ ~ ~ {Item:{id:splash_potion,components:{potion_contents:{custom_effects:[{id:invisibility,duration:400,show_particles:0b,show_icon:0b},{id:speed,duration:400,show_particles:0b,show_icon:0b}]}}}}

# Tag to indicate to not apply invisibility again
tag @s add rascal_is_invis
tag @s remove rascal_can_be_caught

execute at @s run particle minecraft:dust_color_transition{from_color:[0.0,0.0,0.0],to_color:[0.0,0.4,0.5],scale:3} ~ ~1 ~ 0.5 0.5 0.5 0 30
execute at @s run playsound minecraft:entity.breeze.land master @a ~ ~ ~ 2 0.6

scoreboard players add @s rascal_times_found 1

# If not final, play mischief sound
execute as @s[scores={rascal_times_found=..2}] run playsound minecraft:entity.witch.celebrate neutral @a ~ ~ ~ 1 2

# If found 3 times, give gift
execute as @s[scores={rascal_times_found=3..}] run return run function rascal:give_gift