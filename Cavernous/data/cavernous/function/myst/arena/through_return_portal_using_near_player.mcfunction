data modify storage cavernous:storage spawn.dimension set from entity @p respawn.dimension
data modify storage cavernous:storage spawn.pos_x set from entity @p respawn.pos[0]
data modify storage cavernous:storage spawn.pos_y set from entity @p respawn.pos[1]
data modify storage cavernous:storage spawn.pos_z set from entity @p respawn.pos[2]

execute if data entity @p respawn.dimension run function cavernous:myst/arena/teleport with storage cavernous:storage spawn
execute unless data entity @p respawn.dimension run function cavernous:myst/arena/teleport_no_spawn

data remove storage cavernous:storage spawn

# Should play a sound and particles after appearing on other side?