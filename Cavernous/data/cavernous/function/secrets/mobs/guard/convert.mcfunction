tag @s add veil_guard
tag @s add converted
data modify entity @s equipment set value {head:{id:"minecraft:chainmail_helmet"},feet:{id:"minecraft:chainmail_boots"},offhand:{id:"minecraft:shield"},mainhand:{id:"minecraft:stone_sword"}}
execute on vehicle run function cavernous:mob_conversion/vehicle