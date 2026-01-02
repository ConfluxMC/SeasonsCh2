# If no respawn is set, set respawn to where the gate marker is looking
execute unless data entity @s respawn at @n[type=minecraft:marker,tag=gate_center] positioned ^ ^-2 ^5 run spawnpoint

# teleport to exit portal saved in marker
execute if data entity @n[type=marker,tag=gate_center] {data:{exit_portal:{}}} run return run function cavernous:myst/arena/teleport with entity @n[type=marker,tag=gate_center] data.exit_portal