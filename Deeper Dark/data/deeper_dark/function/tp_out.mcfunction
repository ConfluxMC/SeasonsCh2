execute if entity @e[type=minecraft:warden,predicate=deeper_dark:in_deeper_dark,distance=0..50] run return run function deeper_dark:tp_out_fail

tag @s add deeper_dark.tp_cooldown
function deeper_dark:remove_shard_label
function deeper_dark:teleport_dimension with entity @s SelectedItem.components.minecraft:custom_data.deeper_dark.EntrancePosition
execute unless data entity @s SelectedItem.components.minecraft:custom_data.deeper_dark.EntrancePosition.dim in minecraft:overworld run function deeper_dark:teleport with entity @s SelectedItem.components.minecraft:custom_data.deeper_dark.EntrancePosition
#disenchant
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["deeper_dark.item"]}
item replace entity @n[type=armor_stand,tag=deeper_dark.item] weapon.mainhand from entity @s weapon.mainhand
data remove entity @n[type=armor_stand,tag=deeper_dark.item] equipment.mainhand.components."minecraft:custom_data".deeper_dark
data remove entity @n[type=armor_stand,tag=deeper_dark.item] equipment.mainhand.components."minecraft:enchantment_glint_override"
execute store result score @n[type=armor_stand,tag=deeper_dark.item] deeper_dark.var run data get entity @n[type=armor_stand,tag=deeper_dark.item] equipment.mainhand.components."minecraft:custom_data"
execute if score @n[type=armor_stand,tag=deeper_dark.item] deeper_dark.var matches 0 run data remove entity @n[type=armor_stand,tag=deeper_dark.item] equipment.mainhand.components."minecraft:custom_data"
item replace entity @s weapon.mainhand from entity @n[type=armor_stand,tag=deeper_dark.item] weapon.mainhand
execute at @s run playsound minecraft:block.grindstone.use ambient @a ~ ~ ~ 1 0
kill @e[type=armor_stand,tag=deeper_dark.item]

advancement grant @s only deeper_dark:way_out
execute at @s run playsound minecraft:entity.warden.sonic_boom ambient @s ~ ~ ~ 1 0 1
execute at @s run playsound minecraft:block.portal.ambient ambient @s ~ ~ ~ 1 2 1
execute at @s run playsound minecraft:block.sculk_shrieker.shriek ambient @s ~ ~ ~ 1 0 1
execute at @s run playsound minecraft:block.respawn_anchor.set_spawn ambient @s ~ ~ ~ 1 0 1