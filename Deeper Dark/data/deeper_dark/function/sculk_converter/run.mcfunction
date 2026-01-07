execute unless block ~ ~ ~ minecraft:sculk_catalyst run return run function deeper_dark:sculk_converter/break
execute if score @s deeper_dark.sculk_converter.conversion_time matches 1.. run function deeper_dark:sculk_converter/sculk_conversion_animation
execute if score @s deeper_dark.sculk_converter.conversion_time matches 1 run function deeper_dark:sculk_converter/sculk_conversion

execute unless data entity @s data.Item run function deeper_dark:sculk_converter/hopper_place_check
execute positioned ~ ~1 ~ run function deeper_dark:sculk_converter/display_fragments
function deeper_dark:sculk_converter/flames_check
execute if score Game deeper_dark.gamerule.disable_sculk_conversion matches 0 if data block ~ ~ ~ cursors[0].charge run function deeper_dark:sculk_converter/charge
execute positioned ~ ~1.5 ~ run function deeper_dark:sculk_converter/display_xp

execute positioned ~ ~3 ~ run data modify entity @n[type=item_display,tag=deeper_dark.sculk_converter_item,distance=0..1] item set from entity @s data.Item
execute unless data entity @s data.Item positioned ~ ~3 ~ run data remove entity @n[type=item_display,tag=deeper_dark.sculk_converter_item,distance=0..1] item