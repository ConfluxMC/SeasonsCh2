scoreboard objectives add chakram_temp dummy

scoreboard players set $0.5 chakram_temp 50
scoreboard players set $2 chakram_temp 2

#sharpness: 0.5 * level + 0.5
scoreboard players operation @s chakram_enchantment_level /= $2 chakram_temp
scoreboard players operation @s chakram_enchantment_level += $0.5 chakram_temp

scoreboard objectives remove chakram_temp

#add to base
scoreboard players operation @s chakram_damage += @s chakram_enchantment_level

function chakram:entity/hit/damage/calculate_finish

#particle
execute at @n[dx=0,type=!#chakram:raybanned,tag=!smithed.strict] run particle minecraft:enchanted_hit ~ ~1 ~ 0.1 0.1 0.1 0.5 30 force