scoreboard players operation $chakram_temp chakram_id = @s chakram_id

tag @s add chakram_return
execute as @p[distance=..100,gamemode=!spectator,predicate=chakram:idmatch] at @s run function chakram:sounds/return

#effect
particle minecraft:gust ~ ~ ~ 0 0 0 0.1 1 force
playsound minecraft:entity.breeze.deflect master @a ~ ~ ~ 1 1.3

#turn immediately
data modify entity @s teleport_duration set value 0
function chakram:entity/face_player
data modify entity @s teleport_duration set value 1