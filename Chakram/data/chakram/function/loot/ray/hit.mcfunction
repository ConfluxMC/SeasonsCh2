scoreboard players set @s chakram_loot_raycast_hit 1

execute store result score @s chakram_loot_chance run random value 1..100
execute if score @s chakram_loot_chance matches ..13 run function chakram:loot/phasing

execute store result score @s chakram_loot_chance run random value 1..100
execute if score @s chakram_loot_chance matches ..6 run function chakram:loot/harvesting

execute store result score @s chakram_loot_chance run random value 1..100
execute if score @s chakram_loot_chance matches ..13 run function chakram:loot/lightweight

execute store result score @s chakram_loot_chance run random value 1..100
execute if score @s chakram_loot_chance matches ..13 run function chakram:loot/bouncing

execute store result score @s chakram_loot_chance run random value 1..100
execute if score @s chakram_loot_chance matches ..13 run function chakram:loot/richochet