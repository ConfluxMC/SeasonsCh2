tag @s add marble_skeleton
tag @s add converted
data modify entity @s equipment set value {mainhand:{id:wooden_sword,components:{item_model:"minecraft:bone"}},offhand:{id:quartz},head:{id:anvil},chest:{id:leather_chestplate,components:{trim:{pattern:flow,material:quartz},dyed_color:5197647}},legs:{id:chainmail_leggings,components:{trim:{pattern:silence,material:netherite}}},feet:{id:leather_boots,components:{trim:{pattern:flow,material:quartz},dyed_color:5197647}}}
data modify entity @s drop_chances set value {mainhand:0f,offhand:0.25f,head:0f,chest:0.025f,legs:0.025f,feet:0.025f}
attribute @s minecraft:follow_range base set 32