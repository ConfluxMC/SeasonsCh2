execute if function chakram:durability/unbreaking run return fail

scoreboard players set @s chakram_damage 0
execute store result score @s chakram_damage run data get entity @s item.components.minecraft:damage

scoreboard players add @s chakram_damage 1
execute store result entity @s item.components.minecraft:damage int 1 run scoreboard players get @s chakram_damage