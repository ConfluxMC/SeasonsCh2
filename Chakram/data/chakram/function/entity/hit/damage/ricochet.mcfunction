#add richochet level
scoreboard players operation @s chakram_damage += @s chakram_enchantment_level

execute if score @s chakram_ricochet matches ..5 run scoreboard players add @s chakram_damage 200
execute if score @s chakram_ricochet matches 6.. run scoreboard players add @s chakram_damage 100
scoreboard players remove @s chakram_ricochet 1
execute if score @s chakram_ricochet matches 1.. run function chakram:entity/hit/damage/ricochet