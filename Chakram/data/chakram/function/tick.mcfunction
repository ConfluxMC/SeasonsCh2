#Removing attributes given by shadowstepping
execute as @e[predicate=chakram:shadowstepping_grounded] run function chakram:enchants/shadowstep/remove_fall_immunity
execute as @e[predicate=chakram:shadowstepping_end_night_vision] run function chakram:enchants/shadowstep/remove_night_vision

execute as @e[type=minecraft:item_display,tag=chakram_entity] at @s run function chakram:entity/tick