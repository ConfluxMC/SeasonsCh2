attribute @s minecraft:sneaking_speed modifier remove chakram:shadowstepping
tag @s remove chakram.shadowstep_under_effects
scoreboard players reset @s chakram_shadowstep_timer_sneak_speed

#If still invisible don't create cloud effect
execute unless predicate chakram:shadowstepping_still_invisible at @s run function chakram:enchants/shadowstep/cloud_effect_exit