###Right
scoreboard players set @s[tag=rascal_moving,tag=!rascal_move_r1,tag=!rascal_move_r2,tag=!rascal_move_r3] rascal_arm_rotation_right 360
tag @s[tag=rascal_moving,tag=!rascal_move_r1,tag=!rascal_move_r2,tag=!rascal_move_r3] add rascal_move_r1

execute as @s[tag=rascal_move_r1,tag=!rascal_move_r2,tag=!rascal_move_r3] at @s run function rascal:move/r1

execute as @s[tag=rascal_move_r2,tag=!rascal_move_r3] at @s run function rascal:move/r2

execute as @s[tag=rascal_move_r3] at @s run function rascal:move/r3


###Left
scoreboard players set @s[tag=rascal_moving,tag=!rascal_move_l1,tag=!rascal_move_l2,tag=!rascal_move_l3] rascal_arm_rotation_left 360
tag @s[tag=rascal_moving,tag=!rascal_move_l1,tag=!rascal_move_l2,tag=!rascal_move_l3] add rascal_move_l1

execute as @s[tag=rascal_move_l1,tag=!rascal_move_l2,tag=!rascal_move_l3] at @s run function rascal:move/l1

execute as @s[tag=rascal_move_l2,tag=!rascal_move_l3] at @s run function rascal:move/l2

execute as @s[tag=rascal_move_l3] at @s run function rascal:move/l3