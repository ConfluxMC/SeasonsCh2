execute store result entity @s Pose.RightArm[0] float 1 run scoreboard players get @s rascal_arm_rotation_right
scoreboard players remove @s[scores={rascal_arm_rotation_right=346..}] rascal_arm_rotation_right 1
scoreboard players remove @s[scores={rascal_arm_rotation_right=346..}] rascal_arm_rotation_right 1

tag @s[scores={rascal_arm_rotation_right=345}] add rascal_move_r3