execute store result entity @s Pose.LeftArm[0] float 1 run scoreboard players get @s rascal_arm_rotation_left
scoreboard players add @s[scores={rascal_arm_rotation_left=..369}] rascal_arm_rotation_left 1
scoreboard players add @s[scores={rascal_arm_rotation_left=..369}] rascal_arm_rotation_left 1

execute if score @s rascal_arm_rotation_left matches 370 run tag @s[scores={rascal_arm_rotation_left=370}] add rascal_move_l3