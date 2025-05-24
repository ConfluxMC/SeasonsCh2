#rotate 90 degrees every 3 ticks
execute if score @s chakram_rotation matches 0 run data merge entity @s {start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,0.0f,1.0f],angle:01.570796f}}}
execute if score @s chakram_rotation matches 3 run data merge entity @s {start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,0.0f,1.0f],angle:3.141593f}}}
execute if score @s chakram_rotation matches 6 run data merge entity @s {start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,0.0f,1.0f],angle:4.712389f}}}
execute if score @s chakram_rotation matches 9 run data merge entity @s {start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,0.0f,1.0f],angle:0.0f}}}
execute if score @s chakram_rotation matches 11 run return run scoreboard players set @s chakram_rotation 0
scoreboard players add @s chakram_rotation 1