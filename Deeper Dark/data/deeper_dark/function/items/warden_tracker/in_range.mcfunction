#setup
data modify storage deeper_dark:data warden_tracker.dimension set from entity @s Dimension
execute store result storage deeper_dark:data warden_tracker.x int 1 run data get entity @n[type=minecraft:warden] Pos[0]
execute store result storage deeper_dark:data warden_tracker.y int 1 run data get entity @n[type=minecraft:warden] Pos[1]
execute store result storage deeper_dark:data warden_tracker.z int 1 run data get entity @n[type=minecraft:warden] Pos[2]
#replace
execute if items entity @s weapon.mainhand minecraft:compass[minecraft:custom_data~{deeper_dark_warden_tracker:1b}] run function deeper_dark:items/warden_tracker/update/mainhand
execute if items entity @s weapon.offhand minecraft:compass[minecraft:custom_data~{deeper_dark_warden_tracker:1b}] run function deeper_dark:items/warden_tracker/update/offhand