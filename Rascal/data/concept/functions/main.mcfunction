
execute at @e[tag=rascal_eggs_spawn_minliv,type=minecraft:glow_item_frame] run function concept:sniffer_spawn/age0
execute as @e[tag=rascal_eggs_spawn_minliv,type=minecraft:glow_item_frame] run kill @s


execute as @e[tag=rascal_body_minliv,tag=!no_invisibility_rascal_minliv] at @s run data merge entity @s {ShowArms:1b,HandItems:[{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:1000070}},{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:1000071}}]}
execute as @e[tag=rascal_body_minliv,tag=!no_invisibility_rascal_minliv] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:1000069}}]}

execute as @e[tag=rascal_body_minliv,tag=no_invisibility_rascal_minliv] at @s run data merge entity @s {ShowArms:1b,HandItems:[{id:"minecraft:air",Count:1b,tag:{CustomModelData:1000070}},{id:"minecraft:air",Count:1b,tag:{CustomModelData:1000071}}]}
execute as @e[tag=rascal_body_minliv,tag=no_invisibility_rascal_minliv] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:air",Count:1b,tag:{CustomModelData:1000069}}]}






scoreboard players add @e[tag=!no_invisibility_rascal_minliv,tag=!add_invisibility_rascal_minliv,tag=rascal_body_minliv] invisibility_rascal_minliv 1

execute as @e[tag=rascal_body_minliv] at @s if score @s invisibility_rascal_minliv matches 600.. run tag @s add add_invisibility_rascal_minliv
execute as @e[tag=rascal_body_minliv] at @s if score @s invisibility_rascal_minliv matches 600.. run scoreboard players reset @s invisibility_rascal_minliv

execute at @e[tag=!no_invisibility_rascal_minliv,tag=add_invisibility_rascal_minliv,tag=rascal_body_minliv] if entity @e[distance=1..5,type=minecraft:player] run summon minecraft:potion ~ ~ ~ {Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:long_invisibility"}}}

execute at @e[tag=add_invisibility_rascal_minliv,tag=!no_invisibility_rascal_minliv,tag=rascal_body_minliv] if entity @e[distance=1..5,type=minecraft:player] run tag @e[tag=!no_invisibility_rascal_minliv,tag=rascal_body_minliv,sort=nearest,limit=1] add no_invisibility_rascal_minliv

tag @e[tag=no_invisibility_rascal_minliv] remove add_invisibility_rascal_minliv

scoreboard players add @e[tag=no_invisibility_rascal_minliv,tag=!add_invisibility_rascal_minliv,tag=rascal_body_minliv] invisibility_rascal_minliv1 1

execute as @e[tag=rascal_body_minliv] at @s if score @s invisibility_rascal_minliv1 matches 200.. run tag @s remove no_invisibility_rascal_minliv

execute as @e[tag=rascal_body_minliv] at @s if score @s invisibility_rascal_minliv1 matches 1 run summon item ~ ~1 ~ {Item:{id:"minecraft:iron_pickaxe",Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:efficiency"}]}}}

execute as @e[tag=rascal_body_minliv] at @s if score @s invisibility_rascal_minliv1 matches 200.. run scoreboard players reset @s invisibility_rascal_minliv1


### - invisibility 
effect give @e[type=minecraft:ocelot,tag=rascal_minliv] minecraft:invisibility 1 1 true

### - slowness 
effect give @e[type=minecraft:ocelot,tag=rascal_minliv] minecraft:slowness 1 1 true


### - 
execute at @e[type=minecraft:armor_stand,tag=rascal_body_minliv] unless entity @e[distance=..1,type=minecraft:ocelot] run kill @e[sort=nearest,limit=1,type=minecraft:armor_stand,tag=rascal_body_minliv,tag=rascal_age0_minliv]

### - Те
execute at @e[tag=rascal_minliv] run teleport @e[distance=..1,type=minecraft:armor_stand,tag=rascal_body_minliv,sort=nearest,limit=1] @e[type=minecraft:ocelot,sort=nearest,limit=1]

############ - Анимация ног

#Выдаёт армарстенду тги 
#      go_minliv_rascal     -Идёт
#      go_no_minliv_rascal  -Строит

### - Стоит
execute at @e[tag=rascal_minlivs,nbt={Motion:[0.0d,0.0d,0.0d]}] run tag @e[distance=..0.5,sort=nearest,limit=1,type=minecraft:armor_stand,tag=rascal_body_minliv,tag=go_no_minliv_rascal] remove go_1_minliv_rascal

execute at @e[tag=rascal_minliv,nbt={Motion:[0.0d,0.0d,0.0d]}] run tag @e[distance=..0.5,sort=nearest,limit=1,type=minecraft:armor_stand,tag=rascal_body_minliv,tag=go_minliv_rascal] remove go_minliv_rascal

execute at @e[tag=rascal_minliv,nbt={Motion:[0.0d,0.0d,0.0d]}] run tag @e[distance=..0.5,sort=nearest,limit=1,type=minecraft:armor_stand,tag=rascal_body_minliv,tag=!go_no_minliv_rascal] add go_no_minliv_rascal 

### - Движется
execute at @e[tag=rascal_minliv,nbt=!{Motion:[0.0d,0.0d,0.0d]}] run tag @e[distance=..0.5,sort=nearest,limit=1,type=minecraft:armor_stand,tag=rascal_body_minliv,tag=go_no_minliv_rascal] remove go_no_minliv_rascal 

execute at @e[tag=rascal_minliv,nbt=!{Motion:[0.0d,0.0d,0.0d]}] run tag @e[distance=..0.5,sort=nearest,limit=1,type=minecraft:armor_stand,tag=rascal_body_minliv,tag=!go_minliv_rascal] add go_minliv_rascal 




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







