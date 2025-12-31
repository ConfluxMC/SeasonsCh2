kill @n[type=item,nbt={Item:{id:"minecraft:diamond_boots",count:1}}]
loot spawn ~ ~0.5 ~ loot cavernous:secrets/items/ancient_boots
tag @s add has_crafted

particle dust{color:[0.443, 0.055, 0.055],scale:2} ~ ~ ~ 0.3 0.3 0.3 1 30 normal @a
playsound block.end_portal_frame.fill block @a ~ ~ ~ 0.8 0.3 0