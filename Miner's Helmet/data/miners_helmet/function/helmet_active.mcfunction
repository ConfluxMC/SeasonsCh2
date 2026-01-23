execute if block ~ ~ ~ light[waterlogged=false] run setblock ~ ~ ~ air
execute if block ~ ~1 ~ light[waterlogged=false] run setblock ~ ~1 ~ air
execute if block ~ ~ ~ light[waterlogged=true] run setblock ~ ~ ~ water
execute if block ~ ~1 ~ light[waterlogged=true] run setblock ~ ~1 ~ water

execute at @n[tag=!miningHelmetMarker,predicate=miners_helmet:miners_helmet_id] anchored eyes run tp @s ^ ^0.5 ^ ~ ~
execute unless entity @n[type=item,predicate=miners_helmet:miners_helmet_id] at @s if block ^ ^ ^1 #miners_helmet:lightable run function miners_helmet:light_forward

execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function miners_helmet:place_light