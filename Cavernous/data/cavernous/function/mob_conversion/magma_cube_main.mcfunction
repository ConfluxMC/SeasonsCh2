
execute if entity @s[tag=!converted] if predicate cavernous:conversion/magma_cube_to_wither_skeleton if predicate cavernous:chance_25 run function cavernous:mob_conversion/wither_skeleton_replace

execute if entity @s[tag=!converted] run tag @s add converted
execute if entity @s[tag=converted] run tag @s remove unconverted