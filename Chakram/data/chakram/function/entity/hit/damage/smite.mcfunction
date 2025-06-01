scoreboard objectives add chakram_temp dummy

scoreboard players set $2 chakram_temp 2
scoreboard players operation $half chakram_temp = @s chakram_enchantment_level
scoreboard players operation $half chakram_temp /= $2 chakram_temp

#smite: 2.5 per level
scoreboard players operation @s chakram_enchantment_level *= $2 chakram_temp
scoreboard players operation @s chakram_enchantment_level += $half chakram_temp

scoreboard objectives remove chakram_temp

#add to base
scoreboard players operation @s chakram_damage += @s chakram_enchantment_level

function chakram:entity/hit/damage/calculate_finish