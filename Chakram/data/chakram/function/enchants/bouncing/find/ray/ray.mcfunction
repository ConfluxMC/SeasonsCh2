execute unless block ~ ~ ~ #chakram:blocks run return fail
execute if score $ray chakram_bouncing_raycast_hit matches 0 positioned ~-0.5 ~-0.5 ~-0.5 as @n[type=!#chakram:raybanned,tag=chakram_bounce_candidate,dx=0] run return run function chakram:enchants/bouncing/find/ray/hit
scoreboard players add $ray chakram_bouncing_raycast_distance 1

execute if score $ray chakram_bouncing_raycast_distance matches ..50 positioned ^ ^ ^0.2 run function chakram:enchants/bouncing/find/ray/ray