execute if score @s deeper_dark.sculk_converter.conversion_time matches 1.. run function deeper_dark:sculk_converter/sculk_conversion_animation
execute if score @s deeper_dark.sculk_converter.conversion_time matches 1 run function deeper_dark:sculk_converter/sculk_conversion

execute if loaded ~ ~ ~ unless block ~ ~ ~ minecraft:sculk_catalyst if data entity @s data.Item run function deeper_dark:sculk_converter/hitbox_remove
execute if loaded ~ ~ ~ positioned ~ ~3 ~1 if block ~ ~ ~ minecraft:hopper[enabled=true,facing=north] unless data entity @s data.Item run function deeper_dark:sculk_converter/hopper_place
execute if loaded ~ ~ ~ positioned ~-1 ~3 ~ if block ~ ~ ~ minecraft:hopper[enabled=true,facing=east] unless data entity @s data.Item run function deeper_dark:sculk_converter/hopper_place
execute if loaded ~ ~ ~ positioned ~ ~3 ~-1 if block ~ ~ ~ minecraft:hopper[enabled=true,facing=south] unless data entity @s data.Item run function deeper_dark:sculk_converter/hopper_place
execute if loaded ~ ~ ~ positioned ~1 ~3 ~ if block ~ ~ ~ minecraft:hopper[enabled=true,facing=west] unless data entity @s data.Item run function deeper_dark:sculk_converter/hopper_place
execute if loaded ~ ~ ~ unless block ~ ~ ~ minecraft:sculk_catalyst run function deeper_dark:sculk_converter/remove_fragment
execute positioned ~ ~1 ~ run function deeper_dark:sculk_converter/display_fragments
scoreboard players set @s deeper_dark.sculk_converter.flames 0
execute if loaded ~ ~ ~ rotated 0 0 positioned ^ ^ ^3 if predicate deeper_dark:soul_flame if score @s deeper_dark.sculk_converter.flames < @s deeper_dark.sculk_converter.fragments run scoreboard players add @s deeper_dark.sculk_converter.flames 1
execute if loaded ~ ~ ~ rotated 45 0 positioned ^ ^ ^3 if predicate deeper_dark:soul_flame if score @s deeper_dark.sculk_converter.flames < @s deeper_dark.sculk_converter.fragments run scoreboard players add @s deeper_dark.sculk_converter.flames 1
execute if loaded ~ ~ ~ rotated 90 0 positioned ^ ^ ^3 if predicate deeper_dark:soul_flame if score @s deeper_dark.sculk_converter.flames < @s deeper_dark.sculk_converter.fragments run scoreboard players add @s deeper_dark.sculk_converter.flames 1
execute if loaded ~ ~ ~ rotated 135 0 positioned ^ ^ ^3 if predicate deeper_dark:soul_flame if score @s deeper_dark.sculk_converter.flames < @s deeper_dark.sculk_converter.fragments run scoreboard players add @s deeper_dark.sculk_converter.flames 1
execute if loaded ~ ~ ~ rotated 180 0 positioned ^ ^ ^3 if predicate deeper_dark:soul_flame if score @s deeper_dark.sculk_converter.flames < @s deeper_dark.sculk_converter.fragments run scoreboard players add @s deeper_dark.sculk_converter.flames 1
execute if loaded ~ ~ ~ rotated 225 0 positioned ^ ^ ^3 if predicate deeper_dark:soul_flame if score @s deeper_dark.sculk_converter.flames < @s deeper_dark.sculk_converter.fragments run scoreboard players add @s deeper_dark.sculk_converter.flames 1
execute if loaded ~ ~ ~ rotated 270 0 positioned ^ ^ ^3 if predicate deeper_dark:soul_flame if score @s deeper_dark.sculk_converter.flames < @s deeper_dark.sculk_converter.fragments run scoreboard players add @s deeper_dark.sculk_converter.flames 1
execute if loaded ~ ~ ~ rotated 315 0 positioned ^ ^ ^3 if predicate deeper_dark:soul_flame if score @s deeper_dark.sculk_converter.flames < @s deeper_dark.sculk_converter.fragments run scoreboard players add @s deeper_dark.sculk_converter.flames 1
execute if score @s deeper_dark.sculk_converter.conversion_time matches 1.. if score @s deeper_dark.sculk_converter.flames < @s deeper_dark.sculk_converter.flame_cost run scoreboard players set @s deeper_dark.sculk_converter.conversion_time 0
execute if score Game deeper_dark.gamerule.disable_sculk_conversion matches 0 if loaded ~ ~ ~ if data block ~ ~ ~ cursors[0].charge run function deeper_dark:sculk_converter/charge
execute positioned ~ ~1.5 ~ run function deeper_dark:sculk_converter/display_xp