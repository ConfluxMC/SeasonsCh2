execute as @e[type=skeleton,tag=ghost,tag=!hand_items_cleared] run data modify entity @s equipment set value {}
execute as @e[type=skeleton,tag=ghost,tag=!hand_items_cleared] run data modify entity @s equipment.chest set value {id:"minecraft:chainmail_chestplate"}
tag @e[type=skeleton,tag=ghost,tag=!hand_items_cleared] add hand_items_cleared