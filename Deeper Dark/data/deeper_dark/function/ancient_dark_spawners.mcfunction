tp @s ~ ~1 ~
execute as @s[predicate=deeper_dark:out_of_bounds] run return run kill @s
execute as @s[tag=!deeper_dark.spawner.sonic_blaster] at @s if block ~ ~ ~ minecraft:air run return run tag @s add deeper_dark.silent_despawn

execute as @s[tag=deeper_dark.spawner.tentacle] at @s if block ~ ~ ~ minecraft:air if block ~ ~-1 ~ sculk unless entity @n[type=minecraft:marker,distance=0..1,tag=deeper_dark.tentacles] run return run function deeper_dark:tentacle/spawn
execute as @s[tag=deeper_dark.spawner.claw] at @s if block ~ ~ ~ minecraft:air if block ~ ~-1 ~ sculk unless entity @n[type=minecraft:block_display,distance=0..1,tag=deeper_dark.sculk_claw] run return run function deeper_dark:claw/spawn
execute as @s[tag=deeper_dark.spawner.syphon] at @s if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air if block ~ ~-1 ~ sculk unless entity @n[type=minecraft:marker,distance=0..1,tag=deeper_dark.syphon] run return run function deeper_dark:syphon/spawn
execute as @s[tag=deeper_dark.spawner.sonic_blaster,predicate=deeper_dark:sonic_blaster_valid_placement] at @s run tag @s add deeper_dark.silent_despawn
execute as @s[tag=deeper_dark.spawner.sonic_blaster,predicate=deeper_dark:sonic_blaster_valid_placement] at @s unless entity @n[type=minecraft:marker,distance=0..1,tag=deeper_dark.sonic_blaster] run return run function deeper_dark:sonic_blaster/spawn


#/execute align xyz run summon minecraft:marker ~.5 ~2.5 ~.5 {Tags:["deeper_dark.spawner.tentacle","deeper_dark.spawner"]}