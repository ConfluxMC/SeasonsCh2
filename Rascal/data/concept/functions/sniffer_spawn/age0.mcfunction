
summon minecraft:ocelot ~ ~ ~ {Tags:["rascal_minliv","rascal_age0_minliv"],PersistenceRequired:1b,Silent:1b,Health:1000,Attributes:[{Name:"minecraft:generic.max_health",Base:10},{Name:"minecraft:generic.movement_speed",Base:0.35}]}

summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Invulnerable:1b,ShowArms:1b,HandItems:[{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:1000070}},{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:1000071}}],Tags:["rascal_body_minliv","rascal_age0_minliv"],NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:1000069}}]}

data merge entity @e[tag=rascal_age0_minliv,type=minecraft:armor_stand,sort=nearest,limit=1] {Pose:{LeftArm:[0f,0f,0f]}}
data merge entity @e[tag=rascal_age0_minliv,type=minecraft:armor_stand,sort=nearest,limit=1] {Pose:{RightArm:[0f,0f,0f]}}
