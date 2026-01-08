#display entity
execute as @e[type=block_display,tag=deeper_dark.shockwave_display_main] at @s unless entity @n[type=pig,tag=deeper_dark.shockwave,distance=0..1] unless predicate deeper_dark:is_passenger at @s run function deeper_dark:shockwave/death
execute as @e[type=block_display,tag=deeper_dark.shockwave_display_main] at @s unless entity @n[type=pig,tag=deeper_dark.shockwave,distance=0..1] on vehicle run tp @s ~ ~-10000 ~
execute as @e[type=#deeper_dark:shockwave_part,tag=deeper_dark.shockwave_display,predicate=deeper_dark:in_void,limit=2,sort=random] unless predicate deeper_dark:is_passenger run kill @s

# main shockwave
execute as @e[type=pig,tag=deeper_dark.shockwave] at @s run function deeper_dark:shockwave/ai/move


execute as @e[type=marker,tag=deeper_dark.shockwave_light] at @s unless entity @e[type=pig,tag=deeper_dark.shockwave,distance=0..2] run function deeper_dark:shockwave/ai/kill_light