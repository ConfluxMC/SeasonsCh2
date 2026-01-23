# TT in ATTPP

# No trim
execute unless items entity @s armor.head #minecraft:trimmable_armor[minecraft:trim~{}] run return fail

# Yes trim
execute if items entity @s armor.head #minecraft:trimmable_armor[minecraft:trim~{material:"minecraft:amethyst"}] run return run scoreboard players add @s minotower.war_bell_armor_head_id 100
execute if items entity @s armor.head #minecraft:trimmable_armor[minecraft:trim~{material:"minecraft:copper"}] run return run scoreboard players add @s minotower.war_bell_armor_head_id 200
execute if items entity @s armor.head #minecraft:trimmable_armor[minecraft:trim~{material:"minecraft:diamond"}] run return run scoreboard players add @s minotower.war_bell_armor_head_id 300
execute if items entity @s armor.head #minecraft:trimmable_armor[minecraft:trim~{material:"minecraft:emerald"}] run return run scoreboard players add @s minotower.war_bell_armor_head_id 400
execute if items entity @s armor.head #minecraft:trimmable_armor[minecraft:trim~{material:"minecraft:gold"}] run return run scoreboard players add @s minotower.war_bell_armor_head_id 500
execute if items entity @s armor.head #minecraft:trimmable_armor[minecraft:trim~{material:"minecraft:iron"}] run return run scoreboard players add @s minotower.war_bell_armor_head_id 600
execute if items entity @s armor.head #minecraft:trimmable_armor[minecraft:trim~{material:"minecraft:lapis"}] run return run scoreboard players add @s minotower.war_bell_armor_head_id 700
execute if items entity @s armor.head #minecraft:trimmable_armor[minecraft:trim~{material:"minecraft:netherite"}] run return run scoreboard players add @s minotower.war_bell_armor_head_id 800
execute if items entity @s armor.head #minecraft:trimmable_armor[minecraft:trim~{material:"minecraft:quartz"}] run return run scoreboard players add @s minotower.war_bell_armor_head_id 900
execute if items entity @s armor.head #minecraft:trimmable_armor[minecraft:trim~{material:"minecraft:redstone"}] run return run scoreboard players add @s minotower.war_bell_armor_head_id 1000
execute if items entity @s armor.head #minecraft:trimmable_armor[minecraft:trim~{material:"minecraft:resin"}] run return run scoreboard players add @s minotower.war_bell_armor_head_id 1100