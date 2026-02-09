execute facing entity @e[type=warden,distance=..50] feet run particle minecraft:soul_fire_flame ~ ~1 ~ ^ ^ ^1000000 0.000002 0 normal
#execute facing entity @n[type=warden,distance=..50] feet run particle minecraft:large_smoke ~ ~1 ~ ^ ^ ^1000000 0.000002 0 normal
#damage @n[type=warden,distance=..50] 2 magic by @s

execute as @e[type=warden,distance=..50] at @s run function minotower:warden_bell/pacify_warden

#execute rotated -180 0 run particle minecraft:soul_fire_flame ^ ^ ^8 0 1 0 0.2 0 normal
#execute rotated -135 0 run particle minecraft:soul_fire_flame ^ ^ ^8 0 1 0 0.2 0 normal
#execute rotated -90 0 run particle minecraft:soul_fire_flame ^ ^ ^8 0 1 0 0.2 0 normal
#execute rotated -45 0 run particle minecraft:soul_fire_flame ^ ^ ^8 0 1 0 0.2 0 normal
#execute rotated 0 0 run particle minecraft:soul_fire_flame ^ ^ ^8 0 1 0 0.2 0 normal
#execute rotated 45 0 run particle minecraft:soul_fire_flame ^ ^ ^8 0 1 0 0.2 0 normal
#execute rotated 90 0 run particle minecraft:soul_fire_flame ^ ^ ^8 0 1 0 0.2 0 normal
#execute rotated 135 0 run particle minecraft:soul_fire_flame ^ ^ ^8 0 1 0 0.2 0 normal

particle minecraft:sculk_soul ~0 ~1 ~ 0.0 -0.15 -0.8 0.7 0 normal
particle minecraft:sculk_soul ~0 ~1 ~ 0.8 -0.15 -0.8 0.7 0 normal
particle minecraft:sculk_soul ~0 ~1 ~ 0.8 -0.15 0.0 0.7 0 normal
particle minecraft:sculk_soul ~0 ~1 ~ 0.8 -0.15 0.8 0.7 0 normal
particle minecraft:sculk_soul ~0 ~1 ~ 0.0 -0.15 0.8 0.7 0 normal
particle minecraft:sculk_soul ~ ~1 ~ -0.8 -0.15 0.8 0.7 0 normal
particle minecraft:sculk_soul ~ ~1 ~ -0.8 -0.15 0.0 0.7 0 normal
particle minecraft:sculk_soul ~ ~1 ~ -0.8 -0.15 -0.8 0.7 0 normal