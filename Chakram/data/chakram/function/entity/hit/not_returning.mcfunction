#enderman
execute as @n[dx=0,type=minecraft:enderman,tag=!smithed.strict] at @s run return run function chakram:entity/hit/enderman

#phasing check
execute if score @s chakram_entity_id = @n[dx=0,type=!#chakram:raybanned,tag=!smithed.strict] chakram_entity_id run return fail

#bouncing check
execute if score @s chakram_entity_id = @n[dx=0,type=!#chakram:raybanned,tag=!smithed.strict] chakram_bounced_id run return fail

#damage
function chakram:entity/hit/damage/calculate
scoreboard players operation @n[dx=0,type=!#chakram:raybanned,tag=!smithed.strict] chakram_bounces = @s chakram_bounces
execute store result storage chakram:entity particle_count int 10 run scoreboard players get @s chakram_bounces
execute if score @s chakram_bounces matches 10.. run data modify storage chakram:entity particle_count set value 100

execute store result storage chakram:entity particle_speed double 0.1 run scoreboard players get @s chakram_bounces
execute if score @s chakram_bounces matches 10.. run data modify storage chakram:entity particle_speed set value 1

#not needed, just to set a value
execute if score @s chakram_bounces matches 0 run data modify storage chakram:entity volume set value 0.6

execute if score @s chakram_bounces matches 1 run data modify storage chakram:entity volume set value 0.6
execute if score @s chakram_bounces matches 2 run data modify storage chakram:entity volume set value 0.7
execute if score @s chakram_bounces matches 3 run data modify storage chakram:entity volume set value 0.8
execute if score @s chakram_bounces matches 4 run data modify storage chakram:entity volume set value 0.9
execute if score @s chakram_bounces matches 5.. run data modify storage chakram:entity volume set value 1
execute as @n[dx=0,type=!#chakram:raybanned,tag=!smithed.strict] at @s run function chakram:entity/hit/damage/apply with storage chakram:entity

#fire aspect
execute if data entity @s item.components."minecraft:enchantments"."minecraft:fire_aspect" run data modify entity @n[dx=0,type=!#chakram:raybanned,tag=!smithed.strict] Fire set value 90s

#durability
function chakram:durability/apply

#check phasing
execute if function chakram:enchants/phasing/check run return fail

#check bouncing
execute if function chakram:enchants/bouncing/check run return fail

#time to turn back
execute at @s run function chakram:entity/return