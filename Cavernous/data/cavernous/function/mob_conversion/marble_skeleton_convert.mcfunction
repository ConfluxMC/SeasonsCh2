tag @s add marble_skeleton
tag @s add converted
data modify entity @s equipment set value {body:{id:skeleton_skull},head:{id:anvil},chest:{id:leather_chestplate,components:{trim:{pattern:flow,material:quartz},dyed_color:5197647}},legs:{id:chainmail_leggings,components:{trim:{pattern:silence,material:netherite}}},feet:{id:leather_boots,components:{trim:{pattern:flow,material:quartz},dyed_color:5197647}}}
attribute @s minecraft:max_health base set 30

loot replace entity @s weapon.mainhand loot cavernous:marble_skeleton/bone_club
loot replace entity @s weapon.offhand loot cavernous:marble_skeleton/devotion_quartz

data modify entity @s drop_chances set value {mainhand:0.25f,offhand:0.25f,body:0.05f,head:0f,chest:0.05f,legs:0.05f,feet:0.05f}