execute if score @s deeper_dark.tentacle_attack_time matches 1..2 run playsound minecraft:block.sculk_sensor.clicking_stop block @a ~ ~ ~ 1 1
execute if score @s deeper_dark.tentacle_attack_time matches 1..10 as @n[type=block_display,tag=deeper_dark.selected_all,tag=deeper_dark.tentacle_segment.1] at @s run rotate @s ~ ~-10
execute if score @s deeper_dark.tentacle_attack_time matches 1..10 as @n[type=block_display,tag=deeper_dark.selected_all,tag=deeper_dark.tentacle_segment.2] at @s run rotate @s ~ ~-20
execute if score @s deeper_dark.tentacle_attack_time matches 1..10 as @n[type=block_display,tag=deeper_dark.selected_all,tag=deeper_dark.tentacle_segment.3] at @s run rotate @s ~ ~-30
execute if score @s deeper_dark.tentacle_attack_time matches 1..10 as @n[type=block_display,tag=deeper_dark.selected_all,tag=deeper_dark.tentacle_segment.4] at @s run rotate @s ~ ~-40
execute if score @s deeper_dark.tentacle_attack_time matches 1..10 as @n[type=block_display,tag=deeper_dark.selected_all,tag=deeper_dark.tentacle_segment.5] at @s run rotate @s ~ ~-50
execute if score @s deeper_dark.tentacle_attack_time matches 1..10 as @n[type=block_display,tag=deeper_dark.selected_all,tag=deeper_dark.tentacle_segment.6] at @s run rotate @s ~ ~-60
tag @s add deeper_dark.selected
execute if score @s deeper_dark.tentacle_attack_time matches 1..3 as @e[type=minecraft:block_display,tag=deeper_dark.selected_all] at @s run function deeper_dark:tentacle/turn_to with entity @n[type=marker,tag=deeper_dark.selected] data.target
execute if score @s deeper_dark.tentacle_attack_time matches 10.. run scoreboard players set @s deeper_dark.var 1
execute if score @s deeper_dark.tentacle_attack_time matches 10 as @e[type=minecraft:block_display,tag=deeper_dark.selected_all] at @s run rotate @s ~ ~60
execute if score @s deeper_dark.tentacle_attack_time matches 11.. as @e[type=minecraft:block_display,tag=deeper_dark.selected_all,tag=!deeper_dark.tentacle.landed,sort=nearest] at @s run function deeper_dark:tentacle/attack
tag @s remove deeper_dark.selected
execute if score @s deeper_dark.tentacle_attack_time matches 30 run data remove entity @s data.target
execute unless data entity @s data.target run scoreboard players set @s deeper_dark.tentacle_attack_time 0