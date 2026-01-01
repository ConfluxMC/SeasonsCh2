execute if score .global priest.active_global matches 0 run return run function cavernous:myst/arena/phase_1_start

execute if score .global priest.active_global matches 1 positioned ~ ~1 ~ unless entity @e[type=skeleton,tag=priest_2,distance=..2] run return run tellraw @a {"text":"[DRAINER] ERROR - NO TARGET FOUND","color":"gray"}

execute positioned ~ ~1 ~ as @e[type=skeleton,tag=priest_2,distance=..2] at @s run function cavernous:myst/arena/defeated