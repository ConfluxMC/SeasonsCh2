#base damage (x100)
scoreboard players set @s chakram_damage 500

#get ricochet
execute store result score @s chakram_enchantment_level run data get entity @s item.components."minecraft:enchantments".levels."chakram:ricochet" 50

#handle ricochet damage
scoreboard players operation @s chakram_ricochet = @s chakram_bounces
execute if score @s chakram_bounces matches 1.. run function chakram:entity/hit/damage/ricochet

execute store result score @s chakram_enchantment_level run data get entity @s item.components."minecraft:enchantments".levels."minecraft:sharpness" 100
execute if score @s chakram_enchantment_level matches 100.. run return run function chakram:entity/hit/damage/sharpness

execute store result score @s chakram_enchantment_level run data get entity @s item.components."minecraft:enchantments".levels."minecraft:smite" 100
execute if score @s chakram_enchantment_level matches 100.. if entity @n[dx=0,type=#minecraft:undead,tag=!smithed.strict] run return run function chakram:entity/hit/damage/smite

execute store result score @s chakram_enchantment_level run data get entity @s item.components."minecraft:enchantments".levels."minecraft:bane_of_arthropods" 100
execute if score @s chakram_enchantment_level matches 100.. if entity @n[dx=0,type=#minecraft:arthropod,tag=!smithed.strict] run return run function chakram:entity/hit/damage/bane_of_arthropods

#no enchants, just base damage
execute store result storage chakram:entity damage float 0.01 run scoreboard players get @s chakram_damage