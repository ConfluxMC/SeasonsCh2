scoreboard players set @s chakram_enchantment_level 0
execute store result score @s chakram_enchantment_level run data get entity @s item.components."minecraft:enchantments"."chakram:phasing"
execute if score @s chakram_enchantment_level matches 0 run return fail

execute if score @s chakram_phasing_count >= @s chakram_enchantment_level run return fail

execute if score @s chakram_entity_id = @n[dx=0,type=!#chakram:raybanned,tag=!smithed.strict] chakram_entity_id run return 1

scoreboard players operation @n[dx=0,type=!#chakram:raybanned,tag=!smithed.strict] chakram_entity_id = @s chakram_entity_id
return run scoreboard players add @s chakram_phasing_count 1
