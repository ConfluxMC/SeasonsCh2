function deeper_dark:remove_shard_label
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["deeper_dark.item"]}
item replace entity @n[type=armor_stand,tag=deeper_dark.item] weapon.mainhand from entity @s weapon.mainhand
data remove entity @n[type=armor_stand,tag=deeper_dark.item] equipment.mainhand.components."minecraft:custom_data".deeper_dark
data remove entity @n[type=armor_stand,tag=deeper_dark.item] equipment.mainhand.components."minecraft:enchantment_glint_override"
execute store result score @n[type=armor_stand,tag=deeper_dark.item] deeper_dark.var run data get entity @n[tag=deeper_dark.item] equipment.mainhand.components."minecraft:custom_data"
execute if score @n[type=armor_stand,tag=deeper_dark.item] deeper_dark.var matches 0 run data remove entity @n[type=armor_stand,tag=deeper_dark.item] equipment.mainhand.components."minecraft:custom_data"
item replace entity @s weapon.mainhand from entity @n[type=armor_stand,tag=deeper_dark.item] weapon.mainhand
kill @e[type=armor_stand,tag=deeper_dark.item]