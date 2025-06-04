execute as @a if items entity @s armor.head minecraft:leather_helmet[minecraft:custom_data={"miners_helmet.miners_helmet":1b}] run execute at @s unless entity @e[tag=miningHelmetStand,distance=..0.8] align xyz run summon armor_stand ~0.5 ~ ~0.5 {Invulnerable:1b,Invisible:1b,Marker:1b,NoBasePlate:1b,Tags:["miningHelmetStand"]}
execute as @e[tag=miningHelmetStand] run function miners_helmet:light
