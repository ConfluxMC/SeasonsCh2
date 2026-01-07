scoreboard players set @s deeper_dark.sculk_converter.flames 0

execute rotated 0 0 positioned ^ ^ ^3 if predicate deeper_dark:soul_flame if score @s deeper_dark.sculk_converter.flames < @s deeper_dark.sculk_converter.fragments run scoreboard players add @s deeper_dark.sculk_converter.flames 1
execute rotated 45 0 positioned ^ ^ ^3 if predicate deeper_dark:soul_flame if score @s deeper_dark.sculk_converter.flames < @s deeper_dark.sculk_converter.fragments run scoreboard players add @s deeper_dark.sculk_converter.flames 1
execute rotated 90 0 positioned ^ ^ ^3 if predicate deeper_dark:soul_flame if score @s deeper_dark.sculk_converter.flames < @s deeper_dark.sculk_converter.fragments run scoreboard players add @s deeper_dark.sculk_converter.flames 1
execute rotated 135 0 positioned ^ ^ ^3 if predicate deeper_dark:soul_flame if score @s deeper_dark.sculk_converter.flames < @s deeper_dark.sculk_converter.fragments run scoreboard players add @s deeper_dark.sculk_converter.flames 1
execute rotated 180 0 positioned ^ ^ ^3 if predicate deeper_dark:soul_flame if score @s deeper_dark.sculk_converter.flames < @s deeper_dark.sculk_converter.fragments run scoreboard players add @s deeper_dark.sculk_converter.flames 1
execute rotated 225 0 positioned ^ ^ ^3 if predicate deeper_dark:soul_flame if score @s deeper_dark.sculk_converter.flames < @s deeper_dark.sculk_converter.fragments run scoreboard players add @s deeper_dark.sculk_converter.flames 1
execute rotated 270 0 positioned ^ ^ ^3 if predicate deeper_dark:soul_flame if score @s deeper_dark.sculk_converter.flames < @s deeper_dark.sculk_converter.fragments run scoreboard players add @s deeper_dark.sculk_converter.flames 1
execute rotated 315 0 positioned ^ ^ ^3 if predicate deeper_dark:soul_flame if score @s deeper_dark.sculk_converter.flames < @s deeper_dark.sculk_converter.fragments run scoreboard players add @s deeper_dark.sculk_converter.flames 1

execute if score @s deeper_dark.sculk_converter.conversion_time matches 1.. if score @s deeper_dark.sculk_converter.flames < @s deeper_dark.sculk_converter.flame_cost run scoreboard players set @s deeper_dark.sculk_converter.conversion_time 0