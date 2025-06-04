execute as @e[tag=rascal_body_minliv,tag=!no_invisibility_rascal_minliv] at @s run data merge entity @s {HandItems:[{id:"minecraft:glow_item_frame",count:1,components:{"minecraft:custom_model_data":{strings:["rascal_1"]}}},{id:"minecraft:glow_item_frame",count:1,components:{"minecraft:custom_model_data":{strings:["rascal_2"]}}}],ArmorItems:[{},{},{},{id:"minecraft:glow_item_frame",count:1,components:{"minecraft:custom_model_data":{strings:["rascal_body"]}}}]}

execute as @e[tag=rascal_body_minliv,tag=no_invisibility_rascal_minliv] at @s run data merge entity @s {ShowArms:1b,HandItems:[{},{}],ArmorItems:[{},{},{},{}]}



scoreboard players add @e[tag=!no_invisibility_rascal_minliv,tag=!add_invisibility_rascal_minliv,tag=rascal_body_minliv] invisibility_rascal_minliv 1

execute as @e[tag=rascal_body_minliv] at @s if score @s invisibility_rascal_minliv matches 600.. run tag @s add add_invisibility_rascal_minliv
execute as @e[tag=rascal_body_minliv] at @s if score @s invisibility_rascal_minliv matches 600.. run scoreboard players reset @s invisibility_rascal_minliv

execute at @e[tag=!no_invisibility_rascal_minliv,tag=add_invisibility_rascal_minliv,tag=rascal_body_minliv] if entity @e[distance=1..5,type=minecraft:player] run summon potion ~ ~ ~ {Item:{id:spalsh_potion,components:{potion_contents:{custom_effects:[{id:invisibility,duration:200}]}}}}

execute at @e[tag=add_invisibility_rascal_minliv,tag=!no_invisibility_rascal_minliv,tag=rascal_body_minliv] if entity @e[distance=1..5,type=minecraft:player] run tag @n[tag=!no_invisibility_rascal_minliv,tag=rascal_body_minliv] add no_invisibility_rascal_minliv

tag @e[tag=no_invisibility_rascal_minliv] remove add_invisibility_rascal_minliv

scoreboard players add @e[tag=no_invisibility_rascal_minliv,tag=!add_invisibility_rascal_minliv,tag=rascal_body_minliv] invisibility_rascal_minliv1 1

execute as @e[tag=rascal_body_minliv] at @s if score @s invisibility_rascal_minliv1 matches 200.. run tag @s remove no_invisibility_rascal_minliv

execute as @e[tag=rascal_body_minliv] at @s if score @s invisibility_rascal_minliv1 matches 1 run loot spawn ~ ~1 ~ loot rascal:rascal_gifts

execute as @e[tag=rascal_body_minliv] at @s if score @s invisibility_rascal_minliv1 matches 200.. run scoreboard players reset @s invisibility_rascal_minliv1


### - Kill ocelot-less armor stands
execute at @e[type=minecraft:armor_stand,tag=rascal_body_minliv] unless entity @e[distance=..1,type=minecraft:ocelot] run kill @n[type=minecraft:armor_stand,tag=rascal_body_minliv,tag=rascal_age0_minliv]

### - Keep the armor stand at the ocelot
execute at @e[tag=rascal_minliv] run teleport @n[distance=..1,type=minecraft:armor_stand,tag=rascal_body_minliv] @n[type=minecraft:ocelot]

############ - Анимация ног (Leg Animations)

#Выдаёт армарстенду тги (Issues tgi to the armor stand???) (Tags given to the armor stand?)
#      go_minliv_rascal     -Идёт (coming/ok)
#      go_no_minliv_rascal  -Строит (build?)

### - Стоит (Cost)
execute at @e[tag=rascal_minlivs,nbt={Motion:[0.0d,0.0d,0.0d]}] run tag @n[distance=..0.5,type=minecraft:armor_stand,tag=rascal_body_minliv,tag=go_no_minliv_rascal] remove go_1_minliv_rascal

execute at @e[tag=rascal_minliv,nbt={Motion:[0.0d,0.0d,0.0d]}] run tag @n[distance=..0.5,type=minecraft:armor_stand,tag=rascal_body_minliv,tag=go_minliv_rascal] remove go_minliv_rascal

execute at @e[tag=rascal_minliv,nbt={Motion:[0.0d,0.0d,0.0d]}] run tag @n[distance=..0.5,type=minecraft:armor_stand,tag=rascal_body_minliv,tag=!go_no_minliv_rascal] add go_no_minliv_rascal 

### - Движется (Moving)
execute at @e[tag=rascal_minliv,nbt=!{Motion:[0.0d,0.0d,0.0d]}] run tag @n[distance=..0.5,type=minecraft:armor_stand,tag=rascal_body_minliv,tag=go_no_minliv_rascal] remove go_no_minliv_rascal 

execute at @e[tag=rascal_minliv,nbt=!{Motion:[0.0d,0.0d,0.0d]}] run tag @n[distance=..0.5,type=minecraft:armor_stand,tag=rascal_body_minliv,tag=!go_minliv_rascal] add go_minliv_rascal 




###Right
scoreboard players set @e[type=minecraft:armor_stand,tag=rascal_body_minliv,tag=go_minliv_rascal,tag=!go_4_rascal_minliv,tag=!go_5_rascal_minliv,tag=!go_6_rascal_minliv] ShowArms_2_rascal_minliv 360
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
