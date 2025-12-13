execute rotated as @p[tag=chakram_user,distance=..5] run tp @s ~ ~ ~ ~ ~
data merge entity @s {interpolation_duration:3,teleport_duration:1,item_display:"none",transformation:{scale:[1.0f,1.0f,1.0f],left_rotation:{axis:[1.0f,0.0f,0.0f],angle:-1.570796f},right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
tag @s add chakram_entity
tag @s add chakram_fresh

scoreboard players set @s chakram_rotation 0

scoreboard players operation @s chakram_id = @p[tag=chakram_user,distance=..5] chakram_id

tag @s add chakram_temp
execute as @p[tag=chakram_mainhand,distance=..5] run data modify entity @n[type=minecraft:item_display,tag=chakram_temp] item set from entity @s SelectedItem
execute as @p[tag=chakram_offhand,distance=..5] run data modify entity @n[type=minecraft:item_display,tag=chakram_temp] item set from entity @s equipment.offhand
tag @s remove chakram_temp

execute if entity @p[tag=chakram_mainhand,distance=..5] run tag @s add chakram_mainhand
execute if entity @p[tag=chakram_offhand,distance=..5] run tag @s add chakram_offhand
execute if entity @p[tag=chakram_user,gamemode=creative,distance=..5] run tag @s add chakram_creative

data modify entity @s HasVisualFire set value 1b
data modify entity @s Fire set value 100s

scoreboard players set @s chakram_phasing_count 0

#give personal id for tracking phasing and bounce
execute store result score @s chakram_entity_id run random value 1..9999999

#check harvesting
execute if data entity @s item.components."minecraft:enchantments"."chakram:harvesting" run tag @s add chakram_harvesting

function chakram:entity/max_distance