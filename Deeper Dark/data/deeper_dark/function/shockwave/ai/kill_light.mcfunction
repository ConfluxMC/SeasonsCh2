execute if block ~ ~ ~ light run setblock ~ ~ ~ air
execute align y run particle large_smoke ~ ~.5 ~ 0 0 0 .05 20 force
execute align y run particle minecraft:sculk_soul ~ ~.5 ~ 0 0 0 .1 20 normal
execute align y run particle minecraft:soul_fire_flame ~ ~.5 ~ 0 0 0 .01 5 normal
execute align y run particle minecraft:sonic_boom ~ ~.5 ~ 0 0 0 1 20 force
#execute positioned ~ ~.5 ~ run function deeper_dark:shockwave/shock
tag @s add deeper_dark.silent_despawn