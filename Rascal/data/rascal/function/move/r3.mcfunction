execute store result entity @s Pose.RightArm[0] float 1 run scoreboard players get @s rascal_arm_rotation_right
scoreboard players add @s[scores={rascal_arm_rotation_right=..359}] rascal_arm_rotation_right 1
scoreboard players add @s[scores={rascal_arm_rotation_right=..359}] rascal_arm_rotation_right 1

tag @s[scores={rascal_arm_rotation_right=360}] remove rascal_move_r1
tag @s[scores={rascal_arm_rotation_right=360}] remove rascal_move_r2
tag @s[scores={rascal_arm_rotation_right=360}] remove rascal_move_r3