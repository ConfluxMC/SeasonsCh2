data modify storage cavernous:storage spawn.dimension set from entity @s respawn.dimension
data modify storage cavernous:storage spawn.pos_x set from entity @s respawn.pos[0]
data modify storage cavernous:storage spawn.pos_y set from entity @s respawn.pos[1]
data modify storage cavernous:storage spawn.pos_z set from entity @s respawn.pos[2]

execute if data entity @s respawn.dimension run function cavernous:myst/arena/teleport with storage cavernous:storage spawn
execute unless data entity @s respawn.dimension run function cavernous:myst/arena/teleport_no_spawn

data remove storage cavernous:storage spawn