# PP in ATTPP

# No trim
execute unless items entity @s armor.chest #minecraft:trimmable_armor[minecraft:trim~{}] run return fail

# Yes trim
execute if items entity @s armor.chest #minecraft:trimmable_armor[minecraft:trim~{pattern:"minecraft:bolt"}] run return run scoreboard players add @s minotower.war_bell_armor_chest_id 1
execute if items entity @s armor.chest #minecraft:trimmable_armor[minecraft:trim~{pattern:"minecraft:coast"}] run return run scoreboard players add @s minotower.war_bell_armor_chest_id 2
execute if items entity @s armor.chest #minecraft:trimmable_armor[minecraft:trim~{pattern:"minecraft:dune"}] run return run scoreboard players add @s minotower.war_bell_armor_chest_id 3
execute if items entity @s armor.chest #minecraft:trimmable_armor[minecraft:trim~{pattern:"minecraft:eye"}] run return run scoreboard players add @s minotower.war_bell_armor_chest_id 4
execute if items entity @s armor.chest #minecraft:trimmable_armor[minecraft:trim~{pattern:"minecraft:flow"}] run return run scoreboard players add @s minotower.war_bell_armor_chest_id 5
execute if items entity @s armor.chest #minecraft:trimmable_armor[minecraft:trim~{pattern:"minecraft:host"}] run return run scoreboard players add @s minotower.war_bell_armor_chest_id 6
execute if items entity @s armor.chest #minecraft:trimmable_armor[minecraft:trim~{pattern:"minecraft:raiser"}] run return run scoreboard players add @s minotower.war_bell_armor_chest_id 7
execute if items entity @s armor.chest #minecraft:trimmable_armor[minecraft:trim~{pattern:"minecraft:rib"}] run return run scoreboard players add @s minotower.war_bell_armor_chest_id 8
execute if items entity @s armor.chest #minecraft:trimmable_armor[minecraft:trim~{pattern:"minecraft:sentry"}] run return run scoreboard players add @s minotower.war_bell_armor_chest_id 9
execute if items entity @s armor.chest #minecraft:trimmable_armor[minecraft:trim~{pattern:"minecraft:shaper"}] run return run scoreboard players add @s minotower.war_bell_armor_chest_id 10
execute if items entity @s armor.chest #minecraft:trimmable_armor[minecraft:trim~{pattern:"minecraft:silence"}] run return run scoreboard players add @s minotower.war_bell_armor_chest_id 11
execute if items entity @s armor.chest #minecraft:trimmable_armor[minecraft:trim~{pattern:"minecraft:snout"}] run return run scoreboard players add @s minotower.war_bell_armor_chest_id 12
execute if items entity @s armor.chest #minecraft:trimmable_armor[minecraft:trim~{pattern:"minecraft:spire"}] run return run scoreboard players add @s minotower.war_bell_armor_chest_id 13
execute if items entity @s armor.chest #minecraft:trimmable_armor[minecraft:trim~{pattern:"minecraft:tide"}] run return run scoreboard players add @s minotower.war_bell_armor_chest_id 14
execute if items entity @s armor.chest #minecraft:trimmable_armor[minecraft:trim~{pattern:"minecraft:vex"}] run return run scoreboard players add @s minotower.war_bell_armor_chest_id 15
execute if items entity @s armor.chest #minecraft:trimmable_armor[minecraft:trim~{pattern:"minecraft:ward"}] run return run scoreboard players add @s minotower.war_bell_armor_chest_id 16
execute if items entity @s armor.chest #minecraft:trimmable_armor[minecraft:trim~{pattern:"minecraft:wayfinder"}] run return run scoreboard players add @s minotower.war_bell_armor_chest_id 17
execute if items entity @s armor.chest #minecraft:trimmable_armor[minecraft:trim~{pattern:"minecraft:wild"}] run return run scoreboard players add @s minotower.war_bell_armor_chest_id 18