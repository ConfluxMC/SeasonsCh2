execute at @s if entity @a[nbt={Inventory:[{components:{"minecraft:custom_data":{miners_helmet.miners_helmet:1b}},Slot:103b}]},distance=..1] if block ~ ~ ~ air run setblock ~ ~ ~ light[level=13,waterlogged=false]
execute at @s if entity @a[nbt={Inventory:[{components:{"minecraft:custom_data":{miners_helmet.miners_helmet:1b}},Slot:103b}]},distance=..1] positioned ~ ~ ~ if predicate miners_helmet:not_flowing if block ~ ~ ~ water run setblock ~ ~ ~ light[level=9,waterlogged=true]

execute at @s if entity @a[nbt={Inventory:[{components:{"minecraft:custom_data":{miners_helmet.miners_helmet:1b}},Slot:103b}]},distance=..1] if block ~ ~1 ~ air run setblock ~ ~1 ~ light[level=13,waterlogged=false]
execute at @s if entity @a[nbt={Inventory:[{components:{"minecraft:custom_data":{miners_helmet.miners_helmet:1b}},Slot:103b}]},distance=..1] positioned ~ ~1 ~ if predicate miners_helmet:not_flowing if block ~ ~ ~ water run setblock ~ ~ ~ light[level=9,waterlogged=true]


execute at @s unless entity @a[nbt={Inventory:[{components:{"minecraft:custom_data":{miners_helmet.miners_helmet:1b}},Slot:103b}]},distance=..1] if block ~ ~ ~ light[waterlogged=false] run setblock ~ ~ ~ air

execute at @s unless entity @a[nbt={Inventory:[{components:{"minecraft:custom_data":{miners_helmet.miners_helmet:1b}},Slot:103b}]},distance=..1] if block ~ ~1 ~ light[waterlogged=false] run setblock ~ ~1 ~ air
execute at @s unless entity @a[nbt={Inventory:[{components:{"minecraft:custom_data":{miners_helmet.miners_helmet:1b}},Slot:103b}]},distance=..1] if block ~ ~ ~ light[waterlogged=true] run setblock ~ ~ ~ water
execute at @s unless entity @a[nbt={Inventory:[{components:{"minecraft:custom_data":{miners_helmet.miners_helmet:1b}},Slot:103b}]},distance=..1] if block ~ ~1 ~ light[waterlogged=true] run setblock ~ ~1 ~ water



execute at @s unless entity @a[nbt={Inventory:[{components:{"minecraft:custom_data":{miners_helmet.miners_helmet:1b}},Slot:103b}]},distance=..1] run function miners_helmet:silent_kill
