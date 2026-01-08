execute as @s[tag=!deeper_dark.warden_spawned_2] run return run tag @s add deeper_dark.warden_spawned_2
execute as @s[tag=!deeper_dark.warden_spawned_3] run return run tag @s add deeper_dark.warden_spawned_3
# If function has not ended yet, it means tag is deeper_dark.warden_spawned_3
tp @s ~ ~-9999.5 ~
tag @s remove deeper_dark.warden_spawned
tag @s remove deeper_dark.warden_spawned_2
tag @s remove deeper_dark.warden_spawned_3