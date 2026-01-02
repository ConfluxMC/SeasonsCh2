kill @e[type=item,predicate=geyser:basalt_item,distance=..2]

execute at @e[tag=geyser,type=armor_stand,tag=broken] run loot spawn ~ ~0.9 ~ loot geyser:geyser
kill @e[type=armor_stand,tag=geyser,tag=broken,tag=placed]