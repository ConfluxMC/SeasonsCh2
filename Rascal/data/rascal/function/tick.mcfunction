#If rascal is not tagged as invisible, give armor stand rascal cosmetics
execute as @e[tag=rascal_stand,tag=!rascal_is_invis] at @s run data merge entity @s {HandItems:[{id:"minecraft:glow_item_frame",count:1,components:{"minecraft:custom_model_data":{strings:["rascal_1"]}}},{id:"minecraft:glow_item_frame",count:1,components:{"minecraft:custom_model_data":{strings:["rascal_2"]}}}],ArmorItems:[{},{},{},{id:"minecraft:glow_item_frame",count:1,components:{"minecraft:custom_model_data":{strings:["rascal_body"]}}}]}

#If rascal is tagged as invisible, remove rascal cosmetics
execute as @e[tag=rascal_stand,tag=rascal_is_invis] at @s run data merge entity @s {ShowArms:1b,HandItems:[{},{}],ArmorItems:[{},{},{},{}]}

#execute as @e[tag=rascal_can_be_caught,scores={rascal_can_be_caught_cooldown=..199}] run say failed caught
#execute as @e[tag=!rascal_is_invis,scores={rascal_stay_invis_timer=..400}] run say failed invis

# Cooldown between when the rascal stops being invisible and can be "caught" again
scoreboard players add @e[tag=rascal_stand,tag=!rascal_is_invis,tag=!rascal_can_be_caught] rascal_can_be_caught_cooldown 1

execute as @e[tag=rascal_stand,scores={rascal_can_be_caught_cooldown=200..}] at @s run tag @s add rascal_can_be_caught
execute as @e[tag=rascal_stand,scores={rascal_can_be_caught_cooldown=200..}] at @s run scoreboard players reset @s rascal_can_be_caught_cooldown

execute as @e[tag=rascal_stand,tag=!rascal_is_invis,tag=rascal_can_be_caught] run execute at @s if entity @e[distance=1..4,type=minecraft:player,gamemode=!spectator] run function rascal:found

scoreboard players add @e[tag=rascal_stand,tag=rascal_is_invis,tag=!rascal_can_be_caught] rascal_stay_invis_timer 1

execute as @e[tag=rascal_stand,scores={rascal_stay_invis_timer=400..}] at @s run function rascal:exit_invis


### - Kill ocelot-less armor stands
execute as @e[tag=rascal_stand] run execute at @s unless entity @e[tag=rascal_ocelot,distance=..1] run kill @s
### - Kill stand-less ocelots
execute as @e[tag=rascal_ocelot] run execute at @s unless entity @e[tag=rascal_stand,distance=..1] run kill @s

### - Keep the armor stand at the ocelot
execute at @e[tag=rascal_ocelot] run teleport @n[tag=rascal_stand,distance=..1] @n[tag=rascal_ocelot]

# Keep the ocelot distrusting so it runs away
execute as @e[tag=rascal_ocelot] run data remove entity @s Trusting

# Negate base speed debuff when sprinting
execute as @e[tag=rascal_ocelot,predicate=rascal:is_sprinting] run attribute @s minecraft:movement_speed modifier add rascal_sprinting_speed_boost 0.1 add_value
execute as @e[tag=rascal_ocelot,predicate=!rascal:is_sprinting] run attribute @s minecraft:movement_speed modifier remove rascal_sprinting_speed_boost



############ - Анимация ног (Leg Animations)

#Выдаёт армарстенду тги (Issues tgi to the armor stand???) (Tags given to the armor stand?)
#      go_minliv_rascal     -Идёт (coming/ok)
#      go_no_minliv_rascal  -Строит (build?)

### - Стоит (Not moving)
execute at @e[tag=rascal_ocelot,nbt={Motion:[0.0d,0.0d,0.0d]}] run function rascal:leg_animations/still

### - Движется (Moving)
execute at @e[tag=rascal_ocelot,nbt=!{Motion:[0.0d,0.0d,0.0d]}] run function rascal:leg_animations/moving


###Right
scoreboard players set @e[type=minecraft:armor_stand,tag=rascal_stand,tag=go_minliv_rascal,tag=!go_4_rascal_minliv,tag=!go_5_rascal_minliv,tag=!go_6_rascal_minliv] ShowArms_2_rascal_minliv 360
tag @e[tag=go_minliv_rascal,tag=!go_4_rascal_minliv,tag=!go_5_rascal_minliv,tag=!go_6_rascal_minliv] add go_4_rascal_minliv

execute as @e[tag=go_4_rascal_minliv,tag=!go_5_rascal_minliv,tag=!go_6_rascal_minliv] at @s store result entity @s Pose.LeftArm[0] float 1 run scoreboard players get @s ShowArms_2_rascal_minliv
execute as @e[tag=go_4_rascal_minliv,tag=!go_5_rascal_minliv,tag=!go_6_rascal_minliv] at @s if score @s ShowArms_2_rascal_minliv matches 346.. run scoreboard players remove @s ShowArms_2_rascal_minliv 1
execute as @e[tag=go_4_rascal_minliv,tag=!go_5_rascal_minliv,tag=!go_6_rascal_minliv] at @s if score @s ShowArms_2_rascal_minliv matches 346.. run scoreboard players remove @s ShowArms_2_rascal_minliv 1

execute as @e[tag=go_4_rascal_minliv,tag=!go_5_rascal_minliv,tag=!go_6_rascal_minliv] at @s if score @s ShowArms_2_rascal_minliv matches 345 run tag @s add go_5_rascal_minliv

execute as @e[tag=go_5_rascal_minliv,tag=!go_6_rascal_minliv] at @s store result entity @s Pose.LeftArm[0] float 1 run scoreboard players get @s ShowArms_2_rascal_minliv
execute as @e[tag=go_5_rascal_minliv,tag=!go_6_rascal_minliv] at @s if score @s ShowArms_2_rascal_minliv matches ..369 run scoreboard players add @s ShowArms_2_rascal_minliv 1
execute as @e[tag=go_5_rascal_minliv,tag=!go_6_rascal_minliv] at @s if score @s ShowArms_2_rascal_minliv matches ..369 run scoreboard players add @s ShowArms_2_rascal_minliv 1

execute as @e[tag=go_5_rascal_minliv,tag=!go_6_rascal_minliv] at @s if score @s ShowArms_2_rascal_minliv matches 370 run tag @s add go_6_rascal_minliv

execute as @e[tag=go_6_rascal_minliv] at @s store result entity @s Pose.LeftArm[0] float 1 run scoreboard players get @s ShowArms_2_rascal_minliv
execute as @e[tag=go_6_rascal_minliv] at @s if score @s ShowArms_2_rascal_minliv matches 360.. run scoreboard players remove @s ShowArms_2_rascal_minliv 1
execute as @e[tag=go_6_rascal_minliv] at @s if score @s ShowArms_2_rascal_minliv matches 360.. run scoreboard players remove @s ShowArms_2_rascal_minliv 1

execute as @e[tag=go_6_rascal_minliv] at @s if score @s ShowArms_2_rascal_minliv matches 360 run tag @s remove go_5_rascal_minliv
execute as @e[tag=go_6_rascal_minliv] at @s if score @s ShowArms_2_rascal_minliv matches 360 run tag @s remove go_4_rascal_minliv
execute as @e[tag=go_6_rascal_minliv] at @s if score @s ShowArms_2_rascal_minliv matches 360 run tag @s remove go_6_rascal_minliv

###Right
scoreboard players set @e[tag=go_minliv_rascal,tag=go_minliv_rascal,tag=!go_1_rascal_minliv,tag=!go_2_rascal_minliv,tag=!go_3_rascal_minliv] ShowArms_1_rascal_minliv 360
tag @e[tag=go_minliv_rascal,tag=go_minliv_rascal,tag=!go_1_rascal_minliv,tag=!go_2_rascal_minliv,tag=!go_3_rascal_minliv] add go_1_rascal_minliv

execute as @e[tag=go_1_rascal_minliv,tag=!go_2_rascal_minliv,tag=!go_3_rascal_minliv] at @s store result entity @s Pose.RightArm[0] float 1 run scoreboard players get @s ShowArms_1_rascal_minliv
execute as @e[tag=go_1_rascal_minliv,tag=!go_2_rascal_minliv,tag=!go_3_rascal_minliv] at @s if score @s ShowArms_1_rascal_minliv matches ..369 run scoreboard players add @s ShowArms_1_rascal_minliv 1
execute as @e[tag=go_1_rascal_minliv,tag=!go_2_rascal_minliv,tag=!go_3_rascal_minliv] at @s if score @s ShowArms_1_rascal_minliv matches ..369 run scoreboard players add @s ShowArms_1_rascal_minliv 1

execute as @e[tag=go_1_rascal_minliv,tag=!go_2_rascal_minliv,tag=!go_3_rascal_minliv] at @s if score @s ShowArms_1_rascal_minliv matches 370 run tag @s add go_2_rascal_minliv

execute as @e[tag=go_2_rascal_minliv,tag=!go_3_rascal_minliv] at @s store result entity @s Pose.RightArm[0] float 1 run scoreboard players get @s ShowArms_1_rascal_minliv
execute as @e[tag=go_2_rascal_minliv,tag=!go_3_rascal_minliv] at @s if score @s ShowArms_1_rascal_minliv matches 346.. run scoreboard players remove @s ShowArms_1_rascal_minliv 1
execute as @e[tag=go_2_rascal_minliv,tag=!go_3_rascal_minliv] at @s if score @s ShowArms_1_rascal_minliv matches 346.. run scoreboard players remove @s ShowArms_1_rascal_minliv 1

execute as @e[tag=go_2_rascal_minliv,tag=!go_3_rascal_minliv] at @s if score @s ShowArms_1_rascal_minliv matches 345 run tag @s add go_3_rascal_minliv

execute as @e[tag=go_3_rascal_minliv] at @s store result entity @s Pose.RightArm[0] float 1 run scoreboard players get @s ShowArms_1_rascal_minliv
execute as @e[tag=go_3_rascal_minliv] at @s if score @s ShowArms_1_rascal_minliv matches ..359 run scoreboard players add @s ShowArms_1_rascal_minliv 1
execute as @e[tag=go_3_rascal_minliv] at @s if score @s ShowArms_1_rascal_minliv matches ..359 run scoreboard players add @s ShowArms_1_rascal_minliv 1

execute as @e[tag=go_3_rascal_minliv] at @s if score @s ShowArms_1_rascal_minliv matches 360 run tag @s remove go_2_rascal_minliv
execute as @e[tag=go_3_rascal_minliv] at @s if score @s ShowArms_1_rascal_minliv matches 360 run tag @s remove go_1_rascal_minliv
execute as @e[tag=go_3_rascal_minliv] at @s if score @s ShowArms_1_rascal_minliv matches 360 run tag @s remove go_3_rascal_minliv
