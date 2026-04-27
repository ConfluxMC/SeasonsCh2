#decrease timer score by 1
scoreboard players remove @s chakram_shadowstep_timer_sneak_speed 1

execute as @s[tag=chakram.shadowstep_fall_immune,predicate=chakram:on_ground] run function chakram:enchants/shadowstep/remove_fall_immunity

#fail means stop the effects
execute as @s[scores={chakram_shadowstep_timer_sneak_speed=..0}] run return fail
return 1