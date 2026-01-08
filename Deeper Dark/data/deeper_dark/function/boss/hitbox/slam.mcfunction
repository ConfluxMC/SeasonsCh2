tp @s @n[type=marker,tag=deeper_dark.boss.target_point,distance=0..4]
execute as @s[tag=!deeper_dark.boss.attack_done] run function deeper_dark:boss/attacks/slam_attack