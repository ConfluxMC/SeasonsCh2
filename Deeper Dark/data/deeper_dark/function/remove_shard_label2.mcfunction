item replace entity @n[type=armor_stand,tag=deeper_dark.item] weapon.mainhand from entity @s weapon.mainhand
$data remove entity @n[type=armor_stand,tag=deeper_dark.item] equipment.mainhand.components."minecraft:lore"[$(shardlines)]
item replace entity @s weapon.mainhand from entity @n[tag=deeper_dark.item] weapon.mainhand
kill @e[type=armor_stand,tag=deeper_dark.item]