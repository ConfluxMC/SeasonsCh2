scoreboard players set @s chakram_enchantment_level 0
execute store result score @s chakram_enchantment_level run data get entity @s item.components."minecraft:enchantments"."chakram:bouncing"
execute if score @s chakram_enchantment_level matches 0 run return fail

execute if score @s chakram_bouncing_count >= @s chakram_enchantment_level run return fail

execute if score @s chakram_entity_id = @n[dx=0,type=!#chakram:raybanned,tag=!smithed.strict] chakram_bounced_id run return 1

scoreboard players operation @n[dx=0,type=!#chakram:raybanned,tag=!smithed.strict] chakram_bounced_id = @s chakram_entity_id

execute if function chakram:enchants/bouncing/find/start run return 1
return fail
