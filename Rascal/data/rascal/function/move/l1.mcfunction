execute store result entity @s Pose.LeftArm[0] float 1 run scoreboard players get @s rascal_arm_rotation_left
scoreboard players remove @s[scores={rascal_arm_rotation_left=346..}] rascal_arm_rotation_left 1
scoreboard players remove @s[scores={rascal_arm_rotation_left=346..}] rascal_arm_rotation_left 1

tag @s[scores={rascal_arm_rotation_left=345}] add rascal_move_l2