#reset
scoreboard objectives remove temp
scoreboard objectives add temp dummy

scoreboard players set $18000 temp 18000
execute store result score $rotation temp run data get entity @s Rotation[0] 100.0
execute store result entity @s Rotation[0] float 0.01 run scoreboard players operation $18000 temp -= $rotation temp