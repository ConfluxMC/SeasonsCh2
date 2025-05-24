scoreboard players set $ray chakram_bouncing_raycast_hit 0
scoreboard players set $ray chakram_bouncing_raycast_distance 0

function chakram:enchants/bouncing/find/ray/ray
execute if score $ray chakram_bouncing_raycast_hit matches 1 run return 1
return fail
