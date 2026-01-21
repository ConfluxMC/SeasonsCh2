scoreboard players add @s minersHelmetForward 1
tp ^ ^ ^1

execute if entity @p[predicate=miners_helmet:miners_helmet_id,advancements={miners_helmet:using_spyglass=true}] unless score @s minersHelmetForward matches 32.. at @s if block ^ ^ ^1 #miners_helmet:lightable run return run function miners_helmet:light_forward
execute unless entity @p[predicate=miners_helmet:miners_helmet_id,advancements={miners_helmet:using_spyglass=true}] unless score @s minersHelmetForward matches 6.. at @s if block ^ ^ ^1 #miners_helmet:lightable run return run function miners_helmet:light_forward
scoreboard players reset @s minersHelmetForward