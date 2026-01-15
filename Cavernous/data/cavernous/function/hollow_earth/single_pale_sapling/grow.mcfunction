execute unless function cavernous:hollow_earth/single_pale_sapling/grow2 run return run function cavernous:hollow_earth/single_pale_sapling/failed_growth

summon arrow ~ ~ ~ {Tags:["single_pale_sapling_arrow"]}
data modify entity @n[type=arrow,tag=single_pale_sapling_arrow,distance=..1] Owner set from entity @s data.Owner
execute as @n[type=arrow,tag=single_pale_sapling_arrow,distance=..1] on origin run advancement grant @s only cavernous:marble_skeleton/grow_single_pale_sapling
kill @n[type=arrow,tag=single_pale_sapling_arrow,distance=..1]

kill @s