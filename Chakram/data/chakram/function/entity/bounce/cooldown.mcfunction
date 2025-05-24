scoreboard players add @s chakram_bounce_cooldown 1
execute if score @s chakram_bounce_cooldown matches 15.. run tag @s remove chakram_bounce
execute if score @s chakram_bounce_cooldown matches 15.. run scoreboard players reset @s chakram_bounce_cooldown