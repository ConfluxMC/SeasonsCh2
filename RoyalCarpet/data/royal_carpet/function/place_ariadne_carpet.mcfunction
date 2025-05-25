#scoreboard players set @s ariadne_enchantment_level 0
#execute store result score @s ariadne_enchantment_level run data get entity @s Inventory[{Slot:100b}].components."minecraft:enchantments".levels."royal_carpet:ariadne_carpet"

#scoreboard players operation ariadne_enchantment_level

execute as @s[nbt={Inventory:[{Slot:100b, components:{"minecraft:enchantments":{levels:{"royal_carpet:ariadne_carpet":1}}}}]}] run execute if block ~ ~-1 ~ #royal_carpet:ariadne_carpet_replaceable at @s run clear @s #royal_carpet:ariadne_carpets 1
execute if predicate royal_carpet:chance/66_percent as @s[nbt={Inventory:[{Slot:100b, components:{"minecraft:enchantments":{levels:{"royal_carpet:ariadne_carpet":2}}}}]}] run execute if block ~ ~-1 ~ #royal_carpet:ariadne_carpet_replaceable at @s run clear @s #royal_carpet:ariadne_carpets 1
execute if predicate royal_carpet:chance/33_percent as @s[nbt={Inventory:[{Slot:100b, components:{"minecraft:enchantments":{levels:{"royal_carpet:ariadne_carpet":3}}}}]}] run execute if block ~ ~-1 ~ #royal_carpet:ariadne_carpet_replaceable at @s run clear @s #royal_carpet:ariadne_carpets 1
execute if predicate royal_carpet:chance/0.5_percent as @s[nbt={Inventory:[{Slot:100b, components:{"minecraft:enchantments":{levels:{"royal_carpet:ariadne_carpet":4}}}}]}] run execute if block ~ ~-1 ~ #royal_carpet:ariadne_carpet_replaceable at @s run clear @s #royal_carpet:ariadne_carpets 1
execute as @s at @s run execute if block ~ ~-1 ~ #royal_carpet:ariadne_carpet_replaceable at @s run setblock ~ ~-1 ~ moss_block
#execute as @s at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 moss_block replace #royal_carpet:ariadne_carpet_replaceable