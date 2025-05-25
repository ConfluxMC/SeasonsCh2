# Player pays moss fee. Higher the level, greater chance of skipping payment
# Level I
execute as @s[nbt={Inventory:[{Slot:100b, components:{"minecraft:enchantments":{levels:{"ariadnes_moss:ariadnes_moss":1}}}}]}] run execute if block ~ ~-1 ~ #ariadnes_moss:replaceable at @s run clear @s #ariadnes_moss:moss_payment 1

# Level II
execute if predicate ariadnes_moss:chance/66_percent as @s[nbt={Inventory:[{Slot:100b, components:{"minecraft:enchantments":{levels:{"ariadnes_moss:ariadnes_moss":2}}}}]}] run execute if block ~ ~-1 ~ #ariadnes_moss:replaceable at @s run clear @s #ariadnes_moss:moss_payment 1

# Level III
execute if predicate ariadnes_moss:chance/33_percent as @s[nbt={Inventory:[{Slot:100b, components:{"minecraft:enchantments":{levels:{"ariadnes_moss:ariadnes_moss":3}}}}]}] run execute if block ~ ~-1 ~ #ariadnes_moss:replaceable at @s run clear @s #ariadnes_moss:moss_payment 1

# Level IV
execute if predicate ariadnes_moss:chance/3.5_percent as @s[nbt={Inventory:[{Slot:100b, components:{"minecraft:enchantments":{levels:{"ariadnes_moss:ariadnes_moss":4}}}}]}] run execute if block ~ ~-1 ~ #ariadnes_moss:replaceable at @s run clear @s #ariadnes_moss:moss_payment 1

# Place moss below player
execute as @s at @s run execute if block ~ ~-1 ~ #ariadnes_moss:replaceable at @s run setblock ~ ~-1 ~ moss_block