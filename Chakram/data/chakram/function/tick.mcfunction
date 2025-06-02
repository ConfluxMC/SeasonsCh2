execute as @e[type=minecraft:item_display,tag=chakram_entity] at @s run function chakram:entity/tick

#Removing attributes given by shadowstepping
execute as @e[predicate=chakram:shadowstepping_grounded] run function chakram:enchants/shadowstep/remove_effects