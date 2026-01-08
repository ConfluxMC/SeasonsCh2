execute unless block ~ ~ ~ sculk_sensor run return run function deeper_dark:sonic_blaster/break


execute if score @s deeper_dark.sonicattack matches ..-1 run scoreboard players add @s deeper_dark.sonicattack 1
execute if score @s deeper_dark.sonicattack matches -1 at @s run function deeper_dark:sonic_blaster/ring/1
execute if score @s deeper_dark.sonicattack matches -1 at @s run function deeper_dark:sonic_blaster/ring/2
execute if score @s deeper_dark.sonicattack matches -1 at @s run return run function deeper_dark:sonic_blaster/ring/3

execute if score @s deeper_dark.sonicattack matches 1.. run scoreboard players add @s deeper_dark.sonicattack 3

# If sensor gets triggered while not charging up (if the sonicattack score is 0 or not enabled)
execute if block ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active] unless score @s deeper_dark.sonicattack matches 1.. unless score @s deeper_dark.sonicattack matches ..-1 run scoreboard players set @s deeper_dark.sonicattack 3

execute if score @s deeper_dark.sonicattack matches 3 run playsound minecraft:entity.warden.sonic_charge block @a ~ ~ ~ 2 1
execute if score @s deeper_dark.sonicattack matches 3 run function deeper_dark:sonic_blaster/ring/4
execute if score @s deeper_dark.sonicattack matches 3 run tag @e[type=text_display,tag=deeper_dark.sonic_blaster_ring_1,distance=0...1,limit=4,sort=nearest] add deeper_dark.silent_despawn
execute if score @s deeper_dark.sonicattack matches 30..32 run function deeper_dark:sonic_blaster/ring/5
execute if score @s deeper_dark.sonicattack matches 30..32 run tag @e[type=text_display,tag=deeper_dark.sonic_blaster_ring_2,distance=0...1,limit=4,sort=nearest] add deeper_dark.silent_despawn
execute if score @s deeper_dark.sonicattack matches 60..62 run function deeper_dark:sonic_blaster/ring/6
execute if score @s deeper_dark.sonicattack matches 60..62 run tag @e[type=text_display,tag=deeper_dark.sonic_blaster_ring_3,distance=0...1,limit=4,sort=nearest] add deeper_dark.silent_despawn
execute if score @s deeper_dark.sonicattack matches 120.. run function deeper_dark:sonic_blaster/blast