# store distance increment
scoreboard players set @s chakram_max_distance 150

# check for lightweight enchantment
scoreboard players set @s chakram_enchantment_level 0
execute store result score @s chakram_enchantment_level run data get entity @s item.components."minecraft:enchantments"."chakram:lightweight"
scoreboard players operation @s chakram_max_distance *= @s chakram_enchantment_level

# number of blocks multiplied by 30
scoreboard players add @s chakram_max_distance 300