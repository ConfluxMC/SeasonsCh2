### spawn
# validate will tag the tentacle segments belonging to this tentacle for use in this function.
function deeper_dark:tentacle/validate

# if there isn't 6 tentacle segments, reset the tentacle. var is now # of tentacle segments
execute at @e[type=block_display,tag=deeper_dark.selected_all,distance=..10] run scoreboard players add @s deeper_dark.var 1
execute unless score @s deeper_dark.var matches 6 run return run function deeper_dark:tentacle/setup


### attack
# if tentacle has no target, look for one (location of a vibration that triggered the sculk sensor)
execute unless data entity @s data.target unless function deeper_dark:tentacle/prep_attack_1 at @e[type=minecraft:block_display,tag=deeper_dark.selected_all,distance=..10] positioned ^ ^.75 ^ positioned ~-.5 ~-.5 ~-.5 if entity @n[dx=0,dy=0,dz=0,predicate=deeper_dark:living,type=!minecraft:warden] run function deeper_dark:tentacle/prep_attack_2
# unless var is 1 or has a target already, look for an entity that is touching one of the tentacle segments. That is the new target
#execute unless score @s deeper_dark.var matches 1 unless data entity @s data.target at @e[type=minecraft:block_display,tag=deeper_dark.selected_all,distance=..10] positioned ^ ^.75 ^ positioned ~-.5 ~-.5 ~-.5 if entity @n[dx=0,dy=0,dz=0,predicate=deeper_dark:living,type=!minecraft:warden] run function deeper_dark:tentacle/prep_attack_2


# Add to attack time
execute if score @s deeper_dark.tentacle_attack_time matches 1.. run scoreboard players add @s deeper_dark.tentacle_attack_time 1
# if sculk sensor is active, tentacle has a target, and attack is not already in progress, then begin the attack
execute if block ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active] if data entity @s data.target unless score @s deeper_dark.tentacle_attack_time matches 1.. run scoreboard players add @s deeper_dark.tentacle_attack_time 1


# run through attack. if attack time 10.., var is set to 1 to indicate what extra idle movements to animate below
execute if score @s deeper_dark.tentacle_attack_time matches 1.. run function deeper_dark:tentacle/attack_process
execute unless data entity @s data.target run tag @e[type=block_display,tag=deeper_dark.selected_all,tag=deeper_dark.tentacle.landed,distance=..10] remove deeper_dark.tentacle.landed


#animate

execute unless score @s deeper_dark.var matches 1 as @e[type=minecraft:block_display,tag=deeper_dark.selected_all,tag=!deeper_dark.tentacle_segment.1,distance=..10] at @s positioned ^ ^ ^1 rotated ~ 0 run rotate @s facing ^ ^-0.01 ^0.01
execute unless score @s deeper_dark.var matches 1 as @n[type=minecraft:block_display,tag=deeper_dark.selected_all,tag=deeper_dark.tentacle_segment.1,distance=..10] at @s positioned ^ ^ ^1 rotated ~ 0 run rotate @s facing ^ ^ ^0.03
execute unless score @s deeper_dark.var matches 1 as @e[type=minecraft:block_display,tag=deeper_dark.selected_all,distance=..10] at @s run function deeper_dark:tentacle/move
execute positioned ~ ~ ~ run tp @n[type=minecraft:block_display,tag=deeper_dark.selected_all,tag=deeper_dark.tentacle_segment.1,distance=..10] ~ ~ ~
execute as @n[type=minecraft:block_display,tag=deeper_dark.selected_all,tag=deeper_dark.tentacle_segment.1,distance=..10] at @s positioned ^ ^1.25 ^ run tp @n[type=minecraft:block_display,tag=deeper_dark.selected_all,tag=deeper_dark.tentacle_segment.2,distance=..10] ~ ~ ~
execute as @n[type=minecraft:block_display,tag=deeper_dark.selected_all,tag=deeper_dark.tentacle_segment.2,distance=..10] at @s positioned ^ ^1.25 ^ run tp @n[type=minecraft:block_display,tag=deeper_dark.selected_all,tag=deeper_dark.tentacle_segment.3,distance=..10] ~ ~ ~
execute if score @s deeper_dark.var matches 1 if entity @n[type=block_display,tag=deeper_dark.selected_all,tag=deeper_dark.tentacle_segment.1,x_rotation=90,distance=..10] as @n[type=minecraft:block_display,tag=deeper_dark.selected_all,tag=deeper_dark.tentacle_segment.2,distance=..10] at @s run tp @s[x_rotation=90] ^ ^ ^.25
execute if score @s deeper_dark.var matches 1 if entity @n[type=block_display,tag=deeper_dark.selected_all,tag=deeper_dark.tentacle_segment.2,x_rotation=90,distance=..10] as @n[type=minecraft:block_display,tag=deeper_dark.selected_all,tag=deeper_dark.tentacle_segment.3,distance=..10] at @s run tp @s[x_rotation=90] ^ ^ ^.5
execute as @n[type=minecraft:block_display,tag=deeper_dark.selected_all,tag=deeper_dark.tentacle_segment.3,distance=..10] at @s positioned ^ ^1.25 ^ run tp @n[type=minecraft:block_display,tag=deeper_dark.selected_all,tag=deeper_dark.tentacle_segment.4,distance=..10] ~ ~ ~
execute as @n[type=minecraft:block_display,tag=deeper_dark.selected_all,tag=deeper_dark.tentacle_segment.4,distance=..10] at @s positioned ^ ^1.25 ^ run tp @n[type=minecraft:block_display,tag=deeper_dark.selected_all,tag=deeper_dark.tentacle_segment.5,distance=..10] ~ ~ ~
execute as @n[type=minecraft:block_display,tag=deeper_dark.selected_all,tag=deeper_dark.tentacle_segment.5,distance=..10] at @s positioned ^ ^1.25 ^ run tp @n[type=minecraft:block_display,tag=deeper_dark.selected_all,tag=deeper_dark.tentacle_segment.6,distance=..10] ~ ~ ~


#die
execute unless block ~ ~ ~ sculk_sensor run function deeper_dark:tentacle/break
#untag
# set var to 1 to mark these tentacles as safe to not despawn for this tick, and to mark them as processed to not be used by other nearby tentacles
scoreboard players set @e[type=block_display,tag=deeper_dark.selected_all,distance=..10] deeper_dark.var 1
tag @e[type=block_display,tag=deeper_dark.selected_all,distance=..10] remove deeper_dark.selected_all