summon minecraft:ocelot ~ ~ ~ {Tags:["rascal_minliv","rascal_age0_minliv"],PersistenceRequired:1b,Silent:1b,Health:1000,Attributes:[{Name:"minecraft:max_health",Base:10},{Name:"minecraft:movement_speed",Base:0.35}]}

summon armor_stand ~ ~ ~ {ShowArms:1b,Invisible:1b,Marker:1b,NoBasePlate:1b,Invulnerable:1b,NoGravity:1b,Tags:["rascal_body_minliv","rascal_age0_minliv"],HandItems:[{id:glow_item_frame,components:{custom_model_data:{strings:[rascal_2]}}},{id:glow_item_frame,components:{custom_model_data:{strings:[rascal_1]}}}],ArmorItems:[{},{},{},{id:glow_item_frame,components:{custom_model_data:{strings:[rascal_body]}}}]}

data merge entity @e[tag=rascal_age0_minliv,type=minecraft:armor_stand,sort=nearest,limit=1] {Pose:{LeftArm:[0f,0f,0f]}}
data merge entity @e[tag=rascal_age0_minliv,type=minecraft:armor_stand,sort=nearest,limit=1] {Pose:{RightArm:[0f,0f,0f]}}