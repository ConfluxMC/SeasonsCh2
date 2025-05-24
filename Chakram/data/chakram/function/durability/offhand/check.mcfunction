execute store result score @s chakram_max_damage run data get entity @s equipment.offhand.components."minecraft:max_damage"
execute store result score @s chakram_damage run data get entity @s equipment.offhand.components."minecraft:damage"

execute if score @s chakram_damage >= @s chakram_max_damage run function chakram:durability/offhand/break