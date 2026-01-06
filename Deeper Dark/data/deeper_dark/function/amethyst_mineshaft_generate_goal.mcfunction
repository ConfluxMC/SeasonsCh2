execute positioned ~-500 ~-1 ~-500 as @e[type=marker,tag=deeper_dark.amethyst_mineshaft_storage_room,dy=1,dx=1000,dz=1000] run tag @s add deeper_dark.amethyst_mineshaft_storage_room_active
execute as @e[tag=deeper_dark.amethyst_mineshaft_storage_room_active,limit=1,sort=random] at @s run function deeper_dark:amethyst_mineshaft_generate_goal_2
execute unless entity @e[type=marker,tag=deeper_dark.amethyst_mineshaft_storage_room_active,limit=1] run function deeper_dark:amethyst_mineshaft_generate_goal_no_active_storage
tag @e[type=marker,tag=deeper_dark.amethyst_mineshaft_storage_room_active] remove deeper_dark.amethyst_mineshaft_storage_room_active
tag @s add deeper_dark.amethyst_mineshaft.floor_spawned_goal