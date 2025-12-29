execute store result entity @s Pose.LeftArm[0] float 1 run scoreboard players get @s rascal_arm_rotation_left
scoreboard players remove @s[scores={rascal_arm_rotation_left=360..}] rascal_arm_rotation_left 1
scoreboard players remove @s[scores={rascal_arm_rotation_left=360..}] rascal_arm_rotation_left 1

tag @s[scores={rascal_arm_rotation_left=360}] remove rascal_move_l1
tag @s[scores={rascal_arm_rotation_left=360}] remove rascal_move_l2
tag @s[scores={rascal_arm_rotation_left=360}] remove rascal_move_l3