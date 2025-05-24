scoreboard players add @s chakram_tick_count 1

#bounce cooldown (reduces glitchiness)
execute if entity @s[tag=!chakram_return,tag=chakram_bounce] run function chakram:entity/bounce/cooldown

#move
function chakram:entity/move

#handle harvesting
execute if entity @s[tag=!chakram_return,tag=!chakram_pickup,tag=chakram_harvesting] at @s if block ~ ~ ~ #chakram:harvesting run setblock ~ ~ ~ minecraft:air destroy

#check return
execute if entity @s[tag=!chakram_return,tag=!chakram_pickup] if score @s chakram_distance >= @s chakram_max_distance run function chakram:entity/return

#check bounce
execute if entity @s[tag=!chakram_return,tag=!chakram_bounce,tag=!chakram_pickup] unless block ^ ^ ^0.05 #chakram:blocks run function chakram:entity/bounce/start

#check hit
execute if entity @s[tag=!chakram_pickup] if score @s chakram_distance matches 30.. positioned ~-0.5 ~-0.5 ~-0.5 if entity @n[type=!#chakram:raybanned,tag=!smithed.strict,dx=0] run function chakram:entity/hit/hit

#loop
execute if score @s chakram_tick_count matches 1..29 at @s run function chakram:entity/handle