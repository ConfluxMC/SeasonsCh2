scoreboard players operation @s defenders_sqrt_x += @s defenders_sqrt_i
scoreboard players add @s defenders_real_distance 1
scoreboard players add @s defenders_sqrt_i 2
execute if score @s defenders_distance > @s defenders_sqrt_x run function defenders:math/sqrt