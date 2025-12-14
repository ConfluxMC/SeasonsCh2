# If no respawn is set, set respawn to where the pedestal armor stand is
execute unless data entity @s respawn run execute at @n[type=minecraft:armor_stand,tag=pedestal] run spawnpoint

# teleport to exit portal saved in armor stand's compass
data modify storage cavernous:temp_exit_portal compass.tp.dimension set from entity @s Dimension
data modify storage cavernous:temp_exit_portal compass.tp.pos_x set from entity @s Pos[0]
data modify storage cavernous:temp_exit_portal compass.tp.pos_y set from entity @s Pos[1]
data modify storage cavernous:temp_exit_portal compass.tp.pos_z set from entity @s Pos[2]

execute if items entity @n[type=armor_stand,tag=gate_center] armor.feet compass run data modify storage cavernous:temp_exit_portal compass.tp.dimension set from entity @n[type=armor_stand,tag=gate_center] equipment.feet.components.minecraft:lodestone_tracker.target.dimension
execute if items entity @n[type=armor_stand,tag=gate_center] armor.feet compass run data modify storage cavernous:temp_exit_portal compass.tp.pos_x set from entity @n[type=armor_stand,tag=gate_center] equipment.feet.components.minecraft:lodestone_tracker.target.pos[0]
execute if items entity @n[type=armor_stand,tag=gate_center] armor.feet compass run data modify storage cavernous:temp_exit_portal compass.tp.pos_y set from entity @n[type=armor_stand,tag=gate_center] equipment.feet.components.minecraft:lodestone_tracker.target.pos[1]
execute if items entity @n[type=armor_stand,tag=gate_center] armor.feet compass run data modify storage cavernous:temp_exit_portal compass.tp.pos_z set from entity @n[type=armor_stand,tag=gate_center] equipment.feet.components.minecraft:lodestone_tracker.target.pos[2]

function cavernous:myst/arena/teleport with storage cavernous:temp_exit_portal compass.tp

data remove storage cavernous:temp_exit_portal compass