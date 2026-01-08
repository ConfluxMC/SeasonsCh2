execute positioned ~ ~3 ~ run summon minecraft:item ~ ~ ~ {Tags:["deeper_dark.sculk_converter_drop"],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @n[type=item,tag=deeper_dark.sculk_converter_drop] Item set from entity @n[type=marker,tag=deeper_dark.sculk_converter,distance=0...1] data.Item
tag @n[type=item,tag=deeper_dark.sculk_converter_drop] remove deeper_dark.sculk_converter_drop
data remove entity @n[type=marker,tag=deeper_dark.sculk_converter,distance=0...1] data.Item
scoreboard players set @n[type=marker,tag=deeper_dark.sculk_converter,distance=0...1] deeper_dark.sculk_converter.conversion_time 0
data remove entity @s interaction