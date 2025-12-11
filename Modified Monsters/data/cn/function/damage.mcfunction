execute as @a[distance=..4.5] at @s run function cn:player/move {"power":2}
execute as @e[type=!minecraft:player,distance=..4.5] at @s run function cn:motion

particle minecraft:cloud ~ ~0.1 ~ 0.1 0.1 0.1 0.1 40

kill @s