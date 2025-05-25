# Player pays moss fee. Higher the level, greater chance of skipping payment
# Level I
execute as @s[nbt={Inventory:[{Slot:100b, components:{"minecraft:enchantments":{levels:{"royal_carpet:ariadnes_moss":1}}}}]}] run execute if block ~ ~-1 ~ #royal_carpet:replaceable at @s run clear @s #royal_carpet:ariadnes_moss_payment 1

# Level II
execute if predicate royal_carpet:chance/66_percent as @s[nbt={Inventory:[{Slot:100b, components:{"minecraft:enchantments":{levels:{"royal_carpet:ariadnes_moss":2}}}}]}] run execute if block ~ ~-1 ~ #royal_carpet:replaceable at @s run clear @s #royal_carpet:ariadnes_moss_payment 1

# Level III
execute if predicate royal_carpet:chance/33_percent as @s[nbt={Inventory:[{Slot:100b, components:{"minecraft:enchantments":{levels:{"royal_carpet:ariadnes_moss":3}}}}]}] run execute if block ~ ~-1 ~ #royal_carpet:replaceable at @s run clear @s #royal_carpet:ariadnes_moss_payment 1

# Level IV
execute if predicate royal_carpet:chance/3.5_percent as @s[nbt={Inventory:[{Slot:100b, components:{"minecraft:enchantments":{levels:{"royal_carpet:ariadnes_moss":4}}}}]}] run execute if block ~ ~-1 ~ #royal_carpet:replaceable at @s run clear @s #royal_carpet:ariadnes_moss_payment 1

# Place moss below player
execute as @s at @s run execute if block ~ ~-1 ~ #royal_carpet:replaceable at @s run setblock ~ ~-1 ~ moss_block