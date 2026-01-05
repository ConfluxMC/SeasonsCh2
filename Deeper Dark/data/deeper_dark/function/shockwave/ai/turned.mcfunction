execute store result score @s deeper_dark.shockwave.direction run data get entity @s Rotation[0]
execute on passengers store result entity @s Rotation[0] float 1 on vehicle run scoreboard players get @s deeper_dark.shockwave.direction
execute on passengers at @s run rotate @s[tag=deeper_dark.shockwave_display_rotate_1] ~-90 ~
execute on passengers at @s run rotate @s[tag=deeper_dark.shockwave_display_rotate_2] ~180 ~
execute unless entity @e[type=marker,tag=deeper_dark.amethyst_mineshaft.floor,distance=..16] store success score @s deeper_dark.shockwave.turn_rng if predicate deeper_dark:chance_50