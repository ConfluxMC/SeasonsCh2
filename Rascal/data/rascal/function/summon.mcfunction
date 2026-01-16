summon minecraft:ocelot ~ ~ ~ {CustomName:'Rascal',Health:200,PersistenceRequired:1b,Silent:1b,Tags:["rascal_ocelot","no_id_rascal"],active_effects:[{id:invisibility,duration:-1,show_particles:0b}],attributes:[{id:max_health,base:200f},{id:movement_speed,base:0.2f},{id:scale,base:1.4f}]}

summon minecraft:armor_stand ~ ~ ~ {ShowArms:1b,Invisible:1b,Marker:1b,NoBasePlate:1b,Invulnerable:1b,NoGravity:1b,Tags:["rascal_stand","no_id_rascal"],Pose:{RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f]},equipment:{mainhand:{id:glow_item_frame,components:{custom_model_data:{strings:[rascal_1]}}},offhand:{id:glow_item_frame,components:{custom_model_data:{strings:[rascal_2]}}},head:{id:glow_item_frame,components:{custom_model_data:{strings:[rascal_body]}}}}}

scoreboard players operation @e[tag=no_id_rascal] rascal.id = .global rascal.id
scoreboard players add .global rascal.id 1
tag @e[tag=no_id_rascal] remove no_id_rascal