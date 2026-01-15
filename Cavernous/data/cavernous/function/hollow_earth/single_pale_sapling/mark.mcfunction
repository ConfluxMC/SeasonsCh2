summon marker ~ ~ ~ {Tags:["single_pale_sapling"]}
data modify entity @n[type=marker,distance=..1] data.Owner set from entity @s Thrower
particle minecraft:item{item:quartz} ~ ~ ~ 0 0 0 0.05 10
playsound minecraft:item.bone_meal.use block @a ~ ~ ~ 2 0.2
playsound minecraft:block.amethyst_block.chime block @a ~ ~ ~ 5 2
data modify entity @s PickupDelay set value 0s

execute on origin run advancement grant @s only cavernous:marble_skeleton/mark_single_pale_sapling