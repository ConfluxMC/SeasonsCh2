execute if entity @s[tag=!converted] if predicate cavernous:miner_skeleton run function cavernous:mob_conversion/miner_replace
execute if entity @s[tag=!miner] run tag @n[type=skeleton] add not_miner
execute if entity @s[tag=!converted] if predicate cavernous:conversion/skeleton_to_stray run function cavernous:mob_conversion/stray_replace
execute if entity @s[tag=!converted] if predicate cavernous:conversion/skeleton_to_parched run function cavernous:mob_conversion/parched_replace
execute if entity @s[tag=!converted] if predicate cavernous:conversion/skeleton_to_marble run function cavernous:mob_conversion/marble_skeleton_convert
execute if entity @s[tag=!converted] if predicate cavernous:conversion/skeleton_to_guard run function cavernous:secrets/mobs/guard/convert
execute if entity @s[tag=!veil_guard] run tag @s add not_veil_guard
execute if entity @s[tag=!converted] if predicate cavernous:conversion/skeleton_to_ghost if predicate cavernous:chance_25 run function cavernous:myst/mobs/ghost/convert
execute if entity @s[tag=!ghost] run tag @s add not_ghost

execute if entity @s[type=skeleton,tag=!converted] run tag @s add converted
execute if entity @s[type=skeleton,tag=converted] run tag @s remove unconverted