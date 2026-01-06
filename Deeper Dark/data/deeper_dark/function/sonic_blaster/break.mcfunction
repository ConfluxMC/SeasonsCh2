tag @s add deeper_dark.silent_despawn
execute positioned ^ ^ ^0.51 run tag @e[tag=deeper_dark.sonic_blaster_display,distance=0...1,limit=4,sort=nearest] add deeper_dark.silent_despawn
tag @e[tag=deeper_dark.sonic_blaster_display,distance=0...1,sort=nearest] add deeper_dark.silent_despawn
tag @n[type=minecraft:item,distance=0...6,predicate=deeper_dark:item_sculk_sensor] add deeper_dark.silent_despawn
execute as @n[type=minecraft:item,distance=0...6,predicate=deeper_dark:item_sculk_sensor] run loot spawn ~ ~ ~ loot deeper_dark:items/sonic_blaster
