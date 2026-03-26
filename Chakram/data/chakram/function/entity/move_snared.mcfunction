# Only count once per tick
scoreboard players add @s[scores={chakram_tick_count=1}] chakram_snared_return_time 1
execute if score @s chakram_snared_return_time matches 400.. run advancement grant @p[gamemode=!spectator,predicate=chakram:idmatch] only chakram:visible/outrun_snare
tp @s ^ ^ ^0.01
execute if block ~ ~ ~ minecraft:water run return run function chakram:entity/water_effect