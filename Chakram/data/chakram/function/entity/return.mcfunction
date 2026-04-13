scoreboard players operation $chakram_temp chakram_id = @s chakram_id

tag @s add chakram_return

#check if shadowstepping. If yes, don't continue
execute as @s[predicate=chakram:is_dark] if entity @p[distance=..100,gamemode=!spectator,predicate=chakram:idmatch,tag=!chakram.shadowstep_under_effects] if data entity @s item.components."minecraft:enchantments"."chakram:shadowstep" if score @s chakram_bounces matches 1.. run return run function chakram:enchants/shadowstep/run

execute as @p[distance=..100,gamemode=!spectator,predicate=chakram:idmatch] at @s run playsound chakram:return player @s ~ ~ ~

#effect
particle minecraft:gust ~ ~ ~ 0 0 0 0.1 1 force
playsound chakram:turn neutral @a ~ ~ ~

#turn immediately
data modify entity @s teleport_duration set value 0
function chakram:entity/face_player
data modify entity @s teleport_duration set value 1