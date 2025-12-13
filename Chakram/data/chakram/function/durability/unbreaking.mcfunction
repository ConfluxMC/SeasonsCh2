execute store result score @s chakram_unbreaking_chance run random value 1..100

scoreboard players set @s chakram_enchantment_level 0
execute store result score @s chakram_enchantment_level run data get entity @s item.components."minecraft:enchantments"."minecraft:unbreaking"
execute if score @s chakram_enchantment_level matches 0 run return fail
execute if score @s chakram_enchantment_level matches 1 if score @s chakram_unbreaking_chance matches ..50 run return 1
execute if score @s chakram_enchantment_level matches 2 if score @s chakram_unbreaking_chance matches ..66 run return 1
execute if score @s chakram_enchantment_level matches 3 if score @s chakram_unbreaking_chance matches ..75 run return 1