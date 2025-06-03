#Removing attributes given by shadowstepping
execute as @p[predicate=chakram:shadowstepping_grounded] run function chakram:enchants/shadowstep/remove_fall_immunity
execute as @p[tag=chakram.shadowstep_under_effects] unless function chakram:enchants/shadowstep/effect_timer run function chakram:enchants/shadowstep/remove_effects

execute as @e[type=minecraft:item_display,tag=chakram_entity] at @s run function chakram:entity/tick