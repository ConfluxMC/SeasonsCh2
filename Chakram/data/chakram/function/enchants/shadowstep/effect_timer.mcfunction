execute as @s[predicate=chakram:shadowstepping_end_sneak_speed] run return run function chakram:enchants/shadowstep/remove_effects

scoreboard objectives add chakram_temp_timer_end dummy
scoreboard players set $2 chakram_temp_timer_end 1

scoreboard players operation @s chakram_shadowstep_timer_sneak_speed -= $2 chakram_temp_timer_end

scoreboard objectives remove chakram_temp_timer_end