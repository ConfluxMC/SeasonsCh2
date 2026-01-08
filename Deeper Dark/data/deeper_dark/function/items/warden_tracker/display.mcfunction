scoreboard players set Game deeper_dark.var -12000
execute store result score @s deeper_dark.var run data get entity @s warden_spawn_tracker.ticks_since_last_warning
scoreboard players operation @s deeper_dark.var += Game deeper_dark.var
scoreboard players set Game deeper_dark.var -20
scoreboard players operation @s deeper_dark.var /= Game deeper_dark.var

execute unless score @s deeper_dark.ancient_dark_active matches 1.. run return run function deeper_dark:items/warden_tracker/display_normal

function deeper_dark:items/warden_tracker/display_ancient_dark