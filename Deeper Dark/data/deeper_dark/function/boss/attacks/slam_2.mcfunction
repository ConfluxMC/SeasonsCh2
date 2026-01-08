rotate @s ~ ~40
execute as @s[x_rotation=90] at @s facing entity @n[type=marker,tag=deeper_dark.boss.target_point] feet run rotate @s ~ 90
execute as @s[x_rotation=90] at @s facing entity @n[type=marker,tag=deeper_dark.boss.target_point] feet run tp @s ~ ~-.25 ~
tag @s remove deeper_dark.boss.slam_2