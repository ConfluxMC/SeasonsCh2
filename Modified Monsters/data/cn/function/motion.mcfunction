#store subject locations
execute store result score @s cn_subject_x run data get entity @e[type=minecraft:area_effect_cloud,predicate=cn:iscloud,distance=..5,sort=nearest,limit=1] Pos[0]
execute store result score @s cn_subject_y run data get entity @e[type=minecraft:area_effect_cloud,predicate=cn:iscloud,distance=..5,sort=nearest,limit=1] Pos[1]
execute store result score @s cn_subject_z run data get entity @e[type=minecraft:area_effect_cloud,predicate=cn:iscloud,distance=..5,sort=nearest,limit=1] Pos[2]

#store entity locations
execute store result score @s cn_target_x run data get entity @s Pos[0]
execute store result score @s cn_target_y run data get entity @s Pos[1]
execute store result score @s cn_target_z run data get entity @s Pos[2]
scoreboard players add @s cn_target_y 2

#calculate vector
scoreboard players operation @s cn_difference_x = @s cn_target_x
scoreboard players operation @s cn_difference_x -= @s cn_subject_x
scoreboard players operation @s cn_difference_y = @s cn_target_y
scoreboard players operation @s cn_difference_y -= @s cn_subject_y
scoreboard players operation @s cn_difference_z = @s cn_target_z
scoreboard players operation @s cn_difference_z -= @s cn_subject_z

#store scaled subject locations
execute store result score @s cn_subject_x run data get entity @e[type=minecraft:area_effect_cloud,predicate=cn:iscloud,distance=..5,sort=nearest,limit=1] Pos[0] 1000
execute store result score @s cn_subject_y run data get entity @e[type=minecraft:area_effect_cloud,predicate=cn:iscloud,distance=..5,sort=nearest,limit=1] Pos[1] 1000
execute store result score @s cn_subject_z run data get entity @e[type=minecraft:area_effect_cloud,predicate=cn:iscloud,distance=..5,sort=nearest,limit=1] Pos[2] 1000

#store scaled entity locations
execute store result score @s cn_target_x run data get entity @s Pos[0] 1000
execute store result score @s cn_target_y run data get entity @s Pos[1] 1000
execute store result score @s cn_target_z run data get entity @s Pos[2] 1000
scoreboard players add @s cn_target_y 2000

# calculated scaled vector
scoreboard players operation @s cn_scaled_difference_x = @s cn_target_x
scoreboard players operation @s cn_scaled_difference_x -= @s cn_subject_x
scoreboard players operation @s cn_scaled_difference_y = @s cn_target_y
scoreboard players operation @s cn_scaled_difference_y -= @s cn_subject_y
scoreboard players operation @s cn_scaled_difference_z = @s cn_target_z
scoreboard players operation @s cn_scaled_difference_z -= @s cn_subject_z

#square vector
scoreboard players operation @s cn_squared_difference_x = @s cn_difference_x
scoreboard players operation @s cn_squared_difference_x *= @s cn_difference_x
scoreboard players operation @s cn_squared_difference_y = @s cn_difference_y
scoreboard players operation @s cn_squared_difference_y *= @s cn_difference_y
scoreboard players operation @s cn_squared_difference_z = @s cn_difference_z
scoreboard players operation @s cn_squared_difference_z *= @s cn_difference_z

#sum vector
scoreboard players operation @s cn_distance = @s cn_squared_difference_x
scoreboard players operation @s cn_distance += @s cn_squared_difference_y
scoreboard players operation @s cn_distance += @s cn_squared_difference_z

#calculate square root
scoreboard players set @s cn_sqrt_i 1
scoreboard players set @s cn_sqrt_x 0
scoreboard players set @s cn_real_distance 0
execute if score @s cn_distance > @s cn_sqrt_x run function cn:math/sqrt

#normalise vector (use scaled vector to preserver decimals)
scoreboard players operation @s cn_scaled_difference_x /= @s cn_real_distance
scoreboard players operation @s cn_scaled_difference_y /= @s cn_real_distance
scoreboard players operation @s cn_scaled_difference_z /= @s cn_real_distance

#set motion
execute store result entity @s Motion[0] double 0.0005 run scoreboard players get @s cn_scaled_difference_x
execute store result entity @s Motion[1] double 0.0005 run scoreboard players get @s cn_scaled_difference_y
execute store result entity @s Motion[2] double 0.0005 run scoreboard players get @s cn_scaled_difference_z


