summon minecraft:ocelot ~ ~ ~ {CustomName:'[{"text":"Rascal"}]',Health:200,PersistenceRequired:1b,Silent:1b,Tags:["rascal_ocelot"],active_effects:[{id:invisibility,duration:-1,show_particles:0b}],attributes:[{id:max_health,base:200f},{id:movement_speed,base:0.2f}]}

summon minecraft:armor_stand ~ ~ ~ {ShowArms:1b,Invisible:1b,Marker:1b,NoBasePlate:1b,Invulnerable:1b,NoGravity:1b,Tags:["rascal_stand"],HandItems:[{id:glow_item_frame,components:{custom_model_data:{strings:["rascal_2"]}}},{id:glow_item_frame,components:{custom_model_data:{strings:["rascal_1"]}}}],ArmorItems:[{},{},{},{id:glow_item_frame,components:{custom_model_data:{strings:["rascal_body"]}}}]}

data merge entity @n[tag=rascal_stand,type=minecraft:armor_stand] {Pose:{RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f]}}