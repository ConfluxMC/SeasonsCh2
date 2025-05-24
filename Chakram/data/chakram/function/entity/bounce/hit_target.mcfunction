scoreboard players operation $chakram_temp chakram_id = @s chakram_id
execute if score @s chakram_bounces matches 20.. run advancement grant @p[distance=..100,gamemode=!spectator,predicate=chakram:idmatch] only chakram:visible/target

setblock ~ ~ ~ redstone_block replace
setblock ~ ~ ~ target replace
tag @s add chakram_return

function chakram:entity/return