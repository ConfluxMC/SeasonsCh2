execute if data entity @s item.components."minecraft:enchantments".levels."chakram:snare" run function chakram:entity/hit/damage/snare

execute store result storage chakram:entity damage float 0.01 run scoreboard players get @s chakram_damage