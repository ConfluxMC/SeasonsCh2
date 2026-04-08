execute if entity @s[type=minecraft:player] run scoreboard players set $chakram_global chakram_is_player 1
execute if entity @s[type=!minecraft:player] run scoreboard players set $chakram_global chakram_is_player 0
$execute if score @s chakram_bounces matches 1.. run playsound minecraft:entity.breeze.wind_burst master @a ~ ~ ~ $(volume) 1.5
$execute if score @s chakram_bounces matches 1.. run particle minecraft:spit ~ ~1 ~ 0.2 0.2 0.2 $(particle_speed) $(particle_count)
$damage @s $(damage) minecraft:player_attack by @n[type=minecraft:item_display,tag=chakram_entity,predicate=chakram:idmatch] from @p[distance=..100,gamemode=!spectator,predicate=chakram:idmatch]