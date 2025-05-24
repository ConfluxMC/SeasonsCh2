execute at @s anchored eyes positioned ^ ^ ^ anchored feet facing entity @n[tag=chakram_bounce_candidate,distance=..20] eyes if function chakram:enchants/bouncing/find/ray/start run return 1
tag @n[tag=chakram_bounce_candidate,distance=..20] remove chakram_bounce_candidate
execute if entity @n[tag=chakram_bounce_candidate,distance=..20] run function chakram:enchants/bouncing/find/loop