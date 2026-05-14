kill @e[type=item,predicate=geyser:basalt_item,distance=..2]

execute at @e[tag=geyser,type=block_display,tag=broken] run loot spawn ~ ~ ~ loot geyser:geyser
kill @e[type=block_display,tag=geyser,tag=broken,tag=placed]