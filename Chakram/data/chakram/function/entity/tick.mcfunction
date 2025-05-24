#delay for a tick to allow for initial movement
execute if entity @s[tag=chakram_fresh] run return run tag @s remove chakram_fresh

scoreboard players set @s chakram_tick_count 0

#delay pickup by one tick to allow animation to finish
execute if entity @s[tag=chakram_pickup] at @s run return run function chakram:pickup/pickup

#tracking return
execute if entity @s[tag=chakram_return] at @s run function chakram:entity/face_player

function chakram:entity/handle
function chakram:entity/rotate