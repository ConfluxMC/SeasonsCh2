execute as @s[tag=deeper_dark.boss_segment.1] at @s positioned ^ ^ ^1 rotated as @n[tag=deeper_dark.selected] rotated ~ -45 run rotate @s facing ^ ^ ^0.1
execute as @s[tag=deeper_dark.boss_segment.1,tag=deeper_dark.boss.slam_2] at @s run function deeper_dark:boss/attacks/slam_2
execute as @s[tag=deeper_dark.boss_segment.1] at @s positioned ^ ^3 ^ run return run tp @n[type=minecraft:block_display,tag=deeper_dark.selected_all,tag=deeper_dark.boss_segment.2] ~ ~ ~


execute as @s[tag=deeper_dark.boss_segment.2] at @s positioned ^ ^ ^1 rotated as @n[tag=deeper_dark.selected] rotated ~ -60 run rotate @s facing ^ ^ ^0.1
execute as @s[tag=deeper_dark.boss_segment.2,tag=deeper_dark.boss.slam_2] at @s run function deeper_dark:boss/attacks/slam_2
execute as @s[tag=deeper_dark.boss_segment.2] at @s positioned ^ ^3 ^ run tp @n[type=minecraft:block_display,tag=deeper_dark.selected_all,tag=deeper_dark.boss_segment.3] ~ ~ ~


execute as @s[tag=deeper_dark.boss_segment.3] at @s positioned ^ ^ ^1 rotated as @n[tag=deeper_dark.selected] rotated ~ -10 run rotate @s facing ^ ^ ^0.1
execute as @s[tag=deeper_dark.boss_segment.3,tag=deeper_dark.boss.slam_2] at @s run function deeper_dark:boss/attacks/slam_2
execute as @s[tag=deeper_dark.boss_segment.3] at @s positioned ^ ^3 ^ run return run tp @n[type=minecraft:block_display,tag=deeper_dark.selected_all,tag=deeper_dark.boss_segment.4] ~ ~ ~


execute as @s[tag=deeper_dark.boss_segment.4] at @s positioned ^ ^ ^1 rotated as @n[tag=deeper_dark.selected] rotated ~ 30 run rotate @s facing ^ ^ ^0.1
execute as @s[tag=deeper_dark.boss_segment.4,tag=deeper_dark.boss.slam_2] at @s run function deeper_dark:boss/attacks/slam_2
execute as @s[tag=deeper_dark.boss_segment.4] at @s positioned ^ ^3 ^ run return run tp @n[type=minecraft:block_display,tag=deeper_dark.selected_all,tag=deeper_dark.boss_segment.5] ~ ~ ~


execute as @s[tag=deeper_dark.boss_segment.5] at @s positioned ^ ^ ^1 rotated as @n[tag=deeper_dark.selected] rotated ~ 60 run rotate @s facing ^ ^ ^0.1
execute as @s[tag=deeper_dark.boss_segment.5,tag=deeper_dark.boss.slam_2] at @s run function deeper_dark:boss/attacks/slam_2
execute as @s[tag=deeper_dark.boss_segment.5] at @s positioned ^ ^3 ^ run return run tp @n[type=minecraft:block_display,tag=deeper_dark.selected_all,tag=deeper_dark.boss_segment.6] ~ ~ ~



execute as @s[tag=deeper_dark.boss_segment.6] at @s positioned ^ ^ ^1 rotated as @n[tag=deeper_dark.selected] rotated ~ 85 run rotate @s facing ^ ^ ^0.5
execute if score @s deeper_dark.tentacle_attack_time matches 1..40 as @s[tag=deeper_dark.boss_segment.6] at @s run function deeper_dark:boss/attacks/slam_2
execute as @s[tag=deeper_dark.boss_segment.6] at @s positioned ^ ^3 ^ run return run tp @n[type=ghast,tag=deeper_dark.boss_hitbox] ~ ~-.5 ~