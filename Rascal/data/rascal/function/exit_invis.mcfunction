tag @s remove rascal_is_invis
scoreboard players reset @s rascal_stay_invis_timer

# Give armor stand rascal cosmetics to be visible again
execute as @e[type=armor_stand,tag=rascal_stand,tag=!rascal_is_invis] at @s run data merge entity @s {equipment:{mainhand:{id:"minecraft:glow_item_frame",count:1,components:{"minecraft:custom_model_data":{strings:["rascal_1"]}}}, offhand:{id:"minecraft:glow_item_frame",count:1,components:{"minecraft:custom_model_data":{strings:["rascal_2"]}}},head:{id:"minecraft:glow_item_frame",count:1,components:{"minecraft:custom_model_data":{strings:["rascal_body"]}}}}}

particle minecraft:dust_color_transition{from_color:[0.0,0.4,0.5],to_color:[0.0,0.0,0.0],scale:2} ~ ~1 ~ 0.5 0.5 0.5 0 30
playsound minecraft:ui.toast.out master @a ~ ~ ~ 2 1.4
playsound minecraft:block.big_dripleaf.tilt_up master @a ~ ~ ~ 0.8 0